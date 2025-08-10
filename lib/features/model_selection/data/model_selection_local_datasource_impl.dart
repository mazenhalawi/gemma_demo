import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/services/file_manager.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/features/model_selection/data/model_selection_local_datasource.dart';

class ModelSelectionLocalDatasourceImpl
    implements ModelSelectionLocalDatasource {
  @override
  Future<List<AiModel>> getAiModels() {
    return Future.value(AiModel.values.toList());
  }

  @override
  Future<List<AiModel>> getDownloadedModels() async {
    final models = await getAiModels();
    final downloadedModels = await getIt
        .get<FileManager>()
        .getDownloadedModels();

    return models.where((model) => downloadedModels.contains(model)).toList();
  }
}
