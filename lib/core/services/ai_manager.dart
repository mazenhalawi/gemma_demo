import 'package:dartz/dartz.dart';
import 'package:flutter_gemma/flutter_gemma.dart';
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

  AiManager._() {
    _modelFileManager = FlutterGemmaPlugin.instance.modelManager;
  }

  Future initialize({
    required AiModel aiModel,
    required AiChatSettings settings,
  }) async {
    final docDirectory = await getIt.get<FileManager>().getDocumentDirectory;
    final modelPath = "${docDirectory.path}/${aiModel.filename}";
    await _modelFileManager.setModelPath(modelPath);

    _inferenceModel = await FlutterGemmaPlugin.instance.createModel(
      modelType: aiModel.modelType,
      supportImage: aiModel.supportsImages,
    );

    _inferenceChat = await _inferenceModel?.createChat(
      temperature: settings.temperature,
      modelType: aiModel.modelType,
      supportImage: aiModel.supportsImages,
      tools: settings.tools,
      tokenBuffer: settings.tokenBuffer,
      randomSeed: settings.randomSeed,
      topK: settings.topK,
      topP: settings.topP,
      supportsFunctionCalls: aiModel.supportsFunctionCalling,
      isThinking: settings.isThinking,
      loraPath: settings.loraPath,
    );
  }

  Future<Either<Failure, Message>> call({required Message chatMessage}) async {
    if (_inferenceChat == null) {
      return Left(Failure('AI model was not initiated.'));
    }

    final message = Message.text(
      text: chatMessage.text,
      isUser: chatMessage.isUser,
    );

    await _inferenceChat!.addQuery(message);
    final response = await _inferenceChat!.generateChatResponse();
    if (response is TextResponse) {
      return Right(Message(text: response.token, isUser: false));
    } else if (response is FunctionCallResponse) {
      return Left(Failure('FunctionCallReponse type was not handled'));
    } else if (response is ThinkingResponse) {
      return Left(Failure('ThinkingResponse type was not handled'));
    }
    return Left(Failure('Unrecognized error has occurred.'));
  }
}
