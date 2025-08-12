import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'chat_entity.freezed.dart';

@freezed
class ChatMessageEntity with _$ChatMessageEntity {
  factory ChatMessageEntity({
    required String id,
    required String message,
    required bool isAiResponse,
  }) = _ChatMessageEntity;

  factory ChatMessageEntity.user(String message) =>
      ChatMessageEntity(id: Uuid().v1(), message: message, isAiResponse: false);

  factory ChatMessageEntity.ai(String message) =>
      ChatMessageEntity(id: Uuid().v1(), message: message, isAiResponse: true);
}
