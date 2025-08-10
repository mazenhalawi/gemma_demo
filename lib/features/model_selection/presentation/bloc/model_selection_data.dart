import 'package:background_downloader/background_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';

part 'model_selection_data.freezed.dart';

@freezed
class ModelSelectionData with _$ModelSelectionData {
  factory ModelSelectionData({
    @Default([]) List<AiModel> aiModels,
    @Default([]) List<AiModel> downloadedModels,
    @Default({}) Map<AiModel, Stream<TaskUpdate>> downloadingTasks,
  }) = _ModelSelectionData;
}
