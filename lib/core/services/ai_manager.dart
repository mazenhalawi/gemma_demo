import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_gemma/flutter_gemma.dart';
import 'package:flutter_gemma/pigeon.g.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/file_manager.dart';
import 'package:gemma_demo/core/services/get_it.dart';

class AiManager {
  late final ModelFileManager _modelFileManager;
  InferenceModel? _inferenceModel;
  InferenceChat? _inferenceChat;

  static final AiManager instance = AiManager._();

  bool get isModelInitialized => _inferenceModel != null;
  bool get isChatInitialized => _inferenceChat != null;

  AiManager._() {
    _modelFileManager = FlutterGemmaPlugin.instance.modelManager;
  }

  Future<Either<Failure, Unit>> setup({
    required AiModel aiModel,
    required AiChatSettings settings,
  }) async {
    try {
      if (_inferenceModel != null) {
        await _inferenceModel!.close();
        _inferenceModel = null;
      }

      final docDirectory = await getIt.get<FileManager>().getDocumentDirectory;
      final modelPath = "${docDirectory.path}/${aiModel.filename}";
      await _modelFileManager.setModelPath(modelPath);

      _inferenceModel = await FlutterGemmaPlugin.instance.createModel(
        modelType: aiModel.modelType,
        supportImage: aiModel.supportsImages,
        preferredBackend: PreferredBackend.cpu,
      );

      final queryUserByIdTool = Tool(
        name: 'user_name',
        description:
            "Find a user's name by supplying the user's id. Id should be an integer between 1 and 10.",
        parameters: {
          "type": "object",
          "properties": {
            "id": {
              "type": "number",
              "description": "the id of the user to fetch the name for",
            },
          },
          "required": ["id"],
        },
      );

      _inferenceChat = await _inferenceModel?.createChat(
        temperature: settings.temperature,
        modelType: aiModel.modelType,
        supportImage: aiModel.supportsImages,
        tools: [...settings.tools, queryUserByIdTool],
        tokenBuffer: settings.tokenBuffer,
        randomSeed: settings.randomSeed,
        topK: settings.topK,
        topP: settings.topP,
        supportsFunctionCalls: aiModel.supportsFunctionCalling,
        isThinking: settings.isThinking,
        loraPath: settings.loraPath,
      );

      // Adding prompt as the first message in the chat
      _inferenceChat?.addQuery(
        Message(
          text: '''
                You are an AI assistant.

                You have access to exactly ONE tool: "user_name".

                IMPORTANT:
                - You must ONLY call tools by their exact registered name.
                - Never invent or change the tool name.
                - For example: {"name": "user_name", "parameters": {"id": 5}}
                ''',
        ),
      );

      return Right(unit);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Message>> postMessage({
    required Message chatMessage,
  }) async {
    if (_inferenceChat == null) {
      return Left(Failure('AI model was not initiated.'));
    }

    await _inferenceChat!.addQuery(chatMessage);
    final response = await _inferenceChat!.generateChatResponse();
    if (response is TextResponse) {
      return Right(Message(text: response.token, isUser: false));
    } else if (response is FunctionCallResponse) {
      print(response.args);
      print('response.name: ${response.name}');

      switch (response.name) {
        case "user_name":
          //Call an API and get the data of a user to send back
          String name = '';
          final id = response.args['id'];
          switch (id) {
            case 1:
              name = 'John Doe';
              break;
            case 2:
              name = 'Jane Smith';
              break;
            case 3:
              name = 'Alice Johnson';
              break;
            case 4:
              name = 'Bob Brown';
              break;
            case 5:
              name = 'Charlie Davis';
              break;
            case 6:
              name = 'Diana Evans';
              break;
            case 7:
              name = 'Frank Green';
              break;
            case 8:
              name = 'Grace Harris';
              break;
            case 9:
              name = 'Henry King';
              break;
            case 10:
              name = 'Ivy Lee';
              break;
            default:
              name = 'Unknown User';
          }

          final toolMessage = Message.toolResponse(
            toolName: 'user_name',
            response: {
              "status": "success",
              "message": "The user's name is $name",
            },
          );

          return postMessage(chatMessage: toolMessage);

        default:
          return Left(Failure('FunctionCallReponse type was not handled'));
      }
    } else if (response is ThinkingResponse) {
      return Left(Failure('ThinkingResponse type was not handled'));
    }
    return Left(Failure('Unrecognized error has occurred.'));
  }
}
