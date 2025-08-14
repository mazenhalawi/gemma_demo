// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter_gemma/core/message.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/ai_manager.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/features/chat/data/chat_ai_datasource.dart';

class ChatAiDatasourceImpl implements ChatAiDatasource {
  @override
  Future<Either<Failure, Unit>> setupManager({
    required AiModel aiModel,
    AiChatSettings? settings,
  }) async {
    final response = await getIt.get<AiManager>().setup(
      aiModel: aiModel,
      settings: settings ?? AiChatSettings(),
    );

    return response.fold((failure) {
      return Left(failure);
    }, (_) => Right(unit));
  }

  @override
  Future<Either<Failure, Message>> postMessage(Message message) async {
    return getIt.get<AiManager>().postMessage(chatMessage: message);
  }
}
