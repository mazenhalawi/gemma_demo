import 'package:dartz/dartz.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/file_manager.dart';
import 'package:flutter_gemma/flutter_gemma.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';

class CreateChatAiModelUsecase {
  final FileManager fileManager;

  CreateChatAiModelUsecase({required this.fileManager});

  Future<Either<Failure, InferenceModel>> call(AiModel aiModel) async {
    final docDirectory = (await fileManager.getDocumentDirectory);
    final modelPath = '${docDirectory.path}/${aiModel.filename}';

    try {
      if (!(await fileManager.checkFileExists(modelPath))) {
        return Left(
          Failure(
            "Ai model was not downloaded. Please download it before you can use it.",
          ),
        );
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }

    final modelFileManager = FlutterGemmaPlugin.instance.modelManager;

    await modelFileManager.setModelPath(modelPath);

    final model = await FlutterGemmaPlugin.instance.createModel(
      modelType: aiModel.modelType,
      supportImage: false,
    );

    return Right(model);
  }
}

class PostChatMessageUseCase {
  Future<Either<Failure, ChatMessageEntity>> call({
    required InferenceChat inferenceChat,
    required ChatMessageEntity chatMessage,
  }) async {
    final message = Message.text(
      text: chatMessage.message,
      isUser: !chatMessage.isAiResponse,
    );

    await inferenceChat.addQuery(message);
    final response = await inferenceChat.generateChatResponse();
    if (response is TextResponse) {
      return Right(ChatMessageEntity.ai(response.token));
    } else if (response is FunctionCallResponse) {
      return Left(Failure('FunctionCallReponse type was not handled'));
    } else if (response is ThinkingResponse) {
      return Left(Failure('ThinkingResponse type was not handled'));
    }
    return Left(Failure('Unrecognized error has occurred.'));
  }
}
