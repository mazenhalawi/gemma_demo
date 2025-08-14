import 'package:dartz/dartz.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';
import 'package:gemma_demo/features/chat/domain/chat_repository.dart';

class SetupAiModelUsecase {
  final ChatRepository repository;

  SetupAiModelUsecase({required this.repository});

  Future<Either<Failure, Unit>> call({
    required AiModel aiModel,
    AiChatSettings? settings,
  }) async {
    return repository.setupChatAiModel(
      aiModel: aiModel,
      settings: settings ?? AiChatSettings(),
    );
  }
}

class PostChatMessageUseCase {
  final ChatRepository repository;

  PostChatMessageUseCase({required this.repository});

  Future<Either<Failure, ChatMessageEntity>> call({
    required ChatMessageEntity chatMessage,
  }) async {
    return repository.postMessage(chatMessage);
  }
}
