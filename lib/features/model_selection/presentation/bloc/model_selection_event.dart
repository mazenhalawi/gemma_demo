part of 'model_selection_bloc.dart';

@freezed
class ModelSelectionEvent with _$ModelSelectionEvent {
  const factory ModelSelectionEvent.getAllAiModels() =
      ModelSelectionEventGetAllAiModels;

  const factory ModelSelectionEvent.selectAiModel(AiModel model) =
      ModelSelectionEventSelectAiModel;

  const factory ModelSelectionEvent.downloadModel(AiModel model) =
      ModelSelectionEventDownloadModel;

  const factory ModelSelectionEvent.getDownloadedModels() =
      ModelSelectionEventGetDownloadedModels;
}
