import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/core/widgets/alert_box.dart';
import 'package:gemma_demo/core/widgets/load_failure_widget.dart';
import 'package:gemma_demo/core/widgets/spinner.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:gemma_demo/features/chat/presentation/screens/chat_screen.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_data.dart';
import 'package:gemma_demo/features/model_selection/presentation/widgets/ai_model_list_item.dart';

class ModelSelectionScreen extends StatelessWidget {
  const ModelSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Model Selection")),
      body: BlocConsumer<ModelSelectionBloc, ModelSelectionState>(
        listenWhen: (prev, curr) => curr.isListenerState,
        buildWhen: (prev, curr) => !curr.isListenerState,
        listener: (context, state) {
          state.maybeWhen(
            didSelectAiModel: (model, data, isListenerState) => null,
            displayAlert:
                (title, message, data, shouldPopOut, isListenerState) =>
                    AlertBox(title: title, message: message)
                        .show(context)
                        .then(
                          (value) =>
                              shouldPopOut ? Navigator.of(context).pop() : null,
                        ),
            promptModelDownload: (model, data, isListenerState) =>
                AlertBox(
                  title: "Download Model",
                  message:
                      "The model ${model.name} is not downloaded. Would you like to download it?",
                  actions: [
                    CupertinoDialogAction(
                      child: Text("Download"),
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                    CupertinoDialogAction(
                      child: Text("Cancel"),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                  ],
                ).show<bool>(context).then((shouldDownloadModel) {
                  if ((shouldDownloadModel ?? false) && context.mounted) {
                    context.read<ModelSelectionBloc>().add(
                      ModelSelectionEvent.downloadModel(model),
                    );
                  }
                }),
            openChat: (model, data, isListenerState) {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              } else {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (_) => getIt.get<ChatBloc>(param1: model),
                      child: ChatScreen(),
                    ),
                  ),
                );
              }
            },
            orElse: () => throw UnimplementedError(
              '$state was not implemented in the listener of $this',
            ),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: (data, _) => _getInitialState(context),
            loading: (data, _) =>
                _getLoadingState(context: context, data: data),
            loadFailure: (failure, retryAction, data, _) =>
                _getLoadFailureState(
                  context: context,
                  failure: failure,
                  retryAction: retryAction,
                ),
            loadSuccess: (data, _) =>
                _getLoadSuccessState(context: context, data: data),
            orElse: () => throw UnimplementedError(
              '$state was not implemented in the builder of $this',
            ),
          );
        },
      ),
    );
  }
}

extension StateWidgets on ModelSelectionScreen {
  Widget _getInitialState(BuildContext context) {
    context.read<ModelSelectionBloc>()
      ..add(const ModelSelectionEvent.getDownloadedModels())
      ..add(const ModelSelectionEvent.getAllAiModels());
    return Container();
  }

  Widget _getLoadingState({
    required BuildContext context,
    ModelSelectionData? data,
  }) {
    return Spinner(
      isLoading: true,
      child: data == null
          ? Container()
          : _getLoadSuccessState(context: context, data: data),
    );
  }

  Widget _getLoadFailureState({
    required BuildContext context,
    required Failure failure,
    required ModelSelectionEvent retryAction,
  }) {
    return LoadFailureWidget(
      failure: failure,
      onRetry: () {
        context.read<ModelSelectionBloc>().add(retryAction);
      },
    );
  }

  Widget _getLoadSuccessState({
    required BuildContext context,
    required ModelSelectionData data,
  }) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Available AI Models:"),
          ...data.aiModels.map(
            (model) => AiModelListItem(
              model: model,
              downloadedModels: data.downloadedModels,
              downloadingTask: data.downloadingTasks[model],
              onTap: () {
                if (data.downloadedModels.contains(model)) {
                  context.read<ModelSelectionBloc>().add(
                    ModelSelectionEvent.selectAiModel(model),
                  );
                } else {
                  //download model
                  context.read<ModelSelectionBloc>().add(
                    ModelSelectionEvent.downloadModel(model),
                  );
                }
              },
            ),
          ),
          if (data.aiModels.isEmpty)
            const Text("No AI models available at the moment."),
        ],
      ),
    );
  }
}
