import 'package:dartz/dartz.dart';
import 'package:flutter_gemma/flutter_gemma.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/features/chat/data/chat_ai_datasource.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';
import 'package:gemma_demo/features/chat/domain/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatAiDatasource _aiDatasource;

  ChatRepositoryImpl({required ChatAiDatasource aiDatasource})
    : _aiDatasource = aiDatasource;

  @override
  Future<Either<Failure, Unit>> setupChatAiModel({
    required AiModel aiModel,
    required AiChatSettings settings,
  }) async {
    return _aiDatasource.setupManager(aiModel: aiModel, settings: settings);
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> postMessage(
    ChatMessageEntity message,
  ) async {
    final msg = Message(text: message.message, isUser: !message.isAiResponse);
    final response = await _aiDatasource.postMessage(msg);

    return response.fold((failure) => Left(failure), (msg) {
      late ChatMessageEntity chatMsgEntity;

      chatMsgEntity = ChatMessageEntity.ai(msg.text);
      return Right(chatMsgEntity);
    });
  }
}
