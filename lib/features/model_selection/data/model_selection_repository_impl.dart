import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/features/model_selection/data/model_selection_local_datasource.dart';
import 'package:gemma_demo/features/model_selection/domain/model_selection_repository.dart';

class ModelSelectionRepositoryImpl implements ModelSelectionRepository {
  final ModelSelectionLocalDatasource dataSource;

  ModelSelectionRepositoryImpl({required this.dataSource});

  @override
  Future<List<AiModel>> getAiModels() {
    return dataSource.getAiModels();
  }

  @override
  Future<List<AiModel>> getDownloadedModels() {
    return dataSource.getDownloadedModels();
  }
}
