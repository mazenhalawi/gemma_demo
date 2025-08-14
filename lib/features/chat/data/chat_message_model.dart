// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
class ChatMessageModel with _$ChatMessageModel {
  @Implements<ChatMessageEntity>()
  factory ChatMessageModel({
    required String id,
    required String message,
    required bool isAiResponse,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}
