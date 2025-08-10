import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/features/model_selection/domain/model_selection_repository.dart';

class GetAiModelsUseCase {
  final ModelSelectionRepository repository;

  GetAiModelsUseCase(this.repository);

  Future<List<AiModel>> call() async {
    return await repository.getAiModels();
  }
}

class GetDownloadedModelsUseCase {
  final ModelSelectionRepository repository;

  GetDownloadedModelsUseCase(this.repository);

  Future<List<AiModel>> call() async {
    return await repository.getDownloadedModels();
  }
}
