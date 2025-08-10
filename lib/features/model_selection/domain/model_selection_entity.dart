import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';

part 'model_selection_entity.freezed.dart';

@freezed
class ModelSelectionEntity with _$ModelSelectionEntity {
  factory ModelSelectionEntity({required List<AiModel> aiModels}) =
      _ModelSelectionEntity;
}
