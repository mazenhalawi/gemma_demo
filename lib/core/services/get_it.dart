import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/services/file_manager.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:gemma_demo/features/model_selection/data/model_selection_local_datasource.dart';
import 'package:gemma_demo/features/model_selection/data/model_selection_local_datasource_impl.dart';
import 'package:gemma_demo/features/model_selection/data/model_selection_repository_impl.dart';
import 'package:gemma_demo/features/model_selection/domain/model_selection_repository.dart';

import 'package:gemma_demo/features/model_selection/domain/model_selection_usecases.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  //Repositories
  getIt.registerLazySingleton<ModelSelectionRepository>(
    () => ModelSelectionRepositoryImpl(dataSource: getIt()),
  );

  //Data Sources
  getIt.registerLazySingleton<ModelSelectionLocalDatasource>(
    () => ModelSelectionLocalDatasourceImpl(),
  );

  //Use Cases
  getIt.registerLazySingleton(() => GetAiModelsUseCase(getIt()));
  getIt.registerLazySingleton(() => GetDownloadedModelsUseCase(getIt()));

  //Blocs
  getIt.registerFactory(
    () => ModelSelectionBloc(
      getAiModelsUseCase: getIt(),
      getDownloadedModelsUseCase: getIt(),
    ),
  );
  getIt.registerFactoryParam<ChatBloc, AiModel, void>(
    (p1, p2) => ChatBloc(selectedModel: p1),
  );

  //Services
  getIt.registerLazySingleton<FileManager>(() => FileManager.instance);
}
