import 'package:dartz/dartz.dart';
import 'package:flutter_gemma/core/message.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/core/models/failure.dart';

abstract class ChatAiDatasource {
  Future<Either<Failure, Unit>> setupManager({
    required AiModel aiModel,
    AiChatSettings? settings,
  });

  Future<Either<Failure, Message>> postMessage(Message message);
}
