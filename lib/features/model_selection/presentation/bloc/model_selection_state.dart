part of 'model_selection_bloc.dart';

@freezed
class ModelSelectionState with _$ModelSelectionState {
  const factory ModelSelectionState.initial({
    required ModelSelectionData data,
    @Default(false) bool isListenerState,
  }) = ModelSelectionStateInitial;

  const factory ModelSelectionState.loading({
    required ModelSelectionData data,
    @Default(false) bool isListenerState,
  }) = ModelSelectionStateLoading;

  const factory ModelSelectionState.loadFailure({
    required Failure failure,
    required ModelSelectionEvent retryEvent,
    required ModelSelectionData data,
    @Default(false) bool isListenerState,
  }) = ModelSelectionStateLoadFailure;

  const factory ModelSelectionState.loadSuccess({
    required ModelSelectionData data,
    @Default(false) bool isListenerState,
  }) = ModelSelectionStateLoadSuccess;

  const factory ModelSelectionState.displayAlert({
    required String title,
    required String message,
    required ModelSelectionData data,
    @Default(false) bool shouldPopOut,
    @Default(true) bool isListenerState,
  }) = ModelSelectionStateDisplayAlert;

  const factory ModelSelectionState.promptModelDownload({
    required AiModel model,
    required ModelSelectionData data,
    @Default(true) bool isListenerState,
  }) = ModelSelectionStatePromptModelDownload;

  const factory ModelSelectionState.openChat({
    required AiModel model,
    required ModelSelectionData data,
    @Default(true) bool isListenerState,
  }) = ModelSelectionStateOpenChat;

  const factory ModelSelectionState.didSelectAiModel({
    required AiModel model,
    required ModelSelectionData data,
    @Default(true) bool isListenerState,
  }) = ModelSelectionStateDidSelectAiModel;
}
