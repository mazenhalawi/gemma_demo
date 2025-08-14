import 'package:uuid/uuid.dart';

class ChatMessageEntity {
  final String id;
  final String message;
  final bool isAiResponse;

  const ChatMessageEntity({
    required this.id,
    required this.message,
    required this.isAiResponse,
  });

  factory ChatMessageEntity.user(String message) =>
      ChatMessageEntity(id: Uuid().v1(), message: message, isAiResponse: false);

  factory ChatMessageEntity.ai(String message) =>
      ChatMessageEntity(id: Uuid().v1(), message: message, isAiResponse: true);
}
