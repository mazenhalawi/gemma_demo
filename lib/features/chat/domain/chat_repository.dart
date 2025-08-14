import 'package:dartz/dartz.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';

abstract class ChatRepository {
  Future<Either<Failure, Unit>> setupChatAiModel({
    required AiModel aiModel,
    required AiChatSettings settings,
  });

  Future<Either<Failure, ChatMessageEntity>> postMessage(
    ChatMessageEntity message,
  );
}
