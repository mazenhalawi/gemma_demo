part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.setupAiModel(AiModel model) = ChatEventSetupAiModel;

  const factory ChatEvent.createChat() = ChatEventCreateChat;

  const factory ChatEvent.postMessage(String message) = ChatEventPostMessage;
}
