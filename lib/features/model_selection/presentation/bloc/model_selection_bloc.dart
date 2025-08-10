import 'package:background_downloader/background_downloader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/file_manager.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/features/model_selection/domain/model_selection_repository.dart';
import 'package:gemma_demo/features/model_selection/domain/model_selection_usecases.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_data.dart';

part 'model_selection_event.dart';
part 'model_selection_state.dart';
part 'model_selection_bloc.freezed.dart';

class ModelSelectionBloc
    extends Bloc<ModelSelectionEvent, ModelSelectionState> {
  GetAiModelsUseCase getAiModelsUseCase;
  GetDownloadedModelsUseCase getDownloadedModelsUseCase;

  ModelSelectionBloc({
    required this.getAiModelsUseCase,
    required this.getDownloadedModelsUseCase,
  }) : super(ModelSelectionState.initial(data: ModelSelectionData())) {
    on<ModelSelectionEvent>((event, emit) async {
      await event.when(
        getAllAiModels: () => _mapGetAllAiModelsEventToState(event, emit),
        selectAiModel: (_) => _mapSelectAiModelEventToState(
          event as ModelSelectionEventSelectAiModel,
          emit,
        ),
        downloadModel: (model) => _mapDownloadModelEventToState(
          event as ModelSelectionEventDownloadModel,
          emit,
        ),
        getDownloadedModels: () =>
            _mapGetDownloadedModelsEventToState(event, emit),
      );
    });
  }
}

extension MapEventToState on ModelSelectionBloc {
  Future _mapGetDownloadedModelsEventToState(
    ModelSelectionEvent event,
    Emitter<ModelSelectionState> emit,
  ) async {
    emit(ModelSelectionState.loading(data: state.data));

    final downloadedModels = await getDownloadedModelsUseCase.call();
    emit(
      ModelSelectionState.loadSuccess(
        data: state.data.copyWith(downloadedModels: downloadedModels),
      ),
    );
  }

  Future _mapDownloadModelEventToState(
    ModelSelectionEventDownloadModel event,
    Emitter<ModelSelectionState> emit,
  ) async {
    try {
      emit(ModelSelectionState.loading(data: state.data));

      final fileManager = getIt.get<FileManager>();
      final response = await fileManager.downloadFile(
        url: event.model.link,
        filename: event.model.filename,
      );

      response.fold(
        (failure) {
          emit(
            ModelSelectionState.displayAlert(
              title: "Failure",
              message: failure.message,
              data: state.data,
            ),
          );
        },
        (taskStatusUpdate) {
          Map<AiModel, Stream<TaskUpdate>> downloadingTasks = Map.from(
            state.data.downloadingTasks,
          );
          downloadingTasks[event.model] = taskStatusUpdate;

          emit(
            ModelSelectionState.loadSuccess(
              data: state.data.copyWith(downloadingTasks: downloadingTasks),
            ),
          );
        },
      );

      emit(ModelSelectionState.loadSuccess(data: state.data));
    } catch (e) {
      emit(
        ModelSelectionState.loadFailure(
          failure: Failure(e.toString()),
          retryEvent: event,
          data: state.data,
        ),
      );
    }
  }

  Future<void> _mapSelectAiModelEventToState(
    ModelSelectionEventSelectAiModel event,
    Emitter<ModelSelectionState> emit,
  ) async {
    final file = await getIt.get<FileManager>().getFile(event.model.filename);

    if (file == null) {
      emit(
        ModelSelectionState.promptModelDownload(
          model: event.model,
          data: state.data,
        ),
      );
    } else {
      emit(ModelSelectionState.openChat(model: event.model, data: state.data));
    }

    emit(ModelSelectionState.loadSuccess(data: state.data));
  }

  Future<void> _mapGetAllAiModelsEventToState(
    ModelSelectionEvent event,
    Emitter<ModelSelectionState> emit,
  ) async {
    emit(ModelSelectionState.loading(data: state.data));

    try {
      // Simulate fetching AI models from a repository
      final aiModels = await GetAiModelsUseCase(
        getIt.get<ModelSelectionRepository>(),
      ).call();

      emit(
        ModelSelectionState.loadSuccess(
          data: state.data.copyWith(aiModels: aiModels),
        ),
      );
    } catch (e) {
      emit(
        ModelSelectionState.loadFailure(
          failure: Failure(e.toString()),
          retryEvent: event,
          data: state.data,
        ),
      );
    }
  }
}
