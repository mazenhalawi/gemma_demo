part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial({
    required ChatData data,
    @Default(false) bool isListenerState,
  }) = ChatStateInitial;

  const factory ChatState.loading({
    required ChatData data,
    @Default(false) bool isListenerState,
  }) = ChatStateLoading;

  const factory ChatState.loadFailure({
    required Failure failure,
    required ChatEvent retryEvent,
    required ChatData data,
    @Default(false) bool isListenerState,
  }) = ChatStateLoadFailure;

  const factory ChatState.loadSuccess({
    required ChatData data,
    @Default(false) bool isListenerState,
  }) = ChatStateLoadSuccess;

  const factory ChatState.displayAlert({
    required String title,
    required String message,
    required ChatData data,
    @Default(false) bool shouldPopOut,
    @Default(true) bool isListenerState,
  }) = ChatStateDisplayAlert;
}
