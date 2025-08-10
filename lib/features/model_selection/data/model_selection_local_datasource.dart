import 'package:gemma_demo/core/enums/ai_model.dart';

abstract class ModelSelectionLocalDatasource {
  Future<List<AiModel>> getAiModels();
  Future<List<AiModel>> getDownloadedModels();
}
