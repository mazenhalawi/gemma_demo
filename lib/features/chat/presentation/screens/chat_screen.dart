import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/core/widgets/alert_box.dart';
import 'package:gemma_demo/core/widgets/load_failure_widget.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_data.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';
import 'package:gemma_demo/features/model_selection/presentation/screen/model_selection_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        actions: [
          IconButton(
            onPressed: () => _openModelSelection(context),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocConsumer<ChatBloc, ChatState>(
          listenWhen: (prev, curr) => curr.isListenerState,
          buildWhen: (prev, curr) => !curr.isListenerState,
          listener: (context, state) {
            state.maybeWhen(
              displayAlert:
                  (title, message, data, shouldPopOut, isListenerState) =>
                      AlertBox(title: title, message: message)
                          .show(context)
                          .then(
                            (value) => shouldPopOut
                                ? Navigator.of(context).pop()
                                : null,
                          ),
              orElse: () => throw UnimplementedError(
                '$state was not implemented in the listener of $this',
              ),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: (data, _) => _getInitialState(context, data),
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
      ),
    );
  }

  Future _openModelSelection(BuildContext context) async {
    final modelSelectionBloc = getIt.get<ModelSelectionBloc>();

    context.read<ChatBloc>().listenToUpdates(modelSelectionBloc);

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => BlocProvider(
          create: (_) => modelSelectionBloc,
          child: ModelSelectionScreen(),
        ),
      ),
    );

    if (context.mounted) {
      context.read<ChatBloc>().stopListeningToUpdates();
    }
  }
}

extension StateWidgets on _ChatScreenState {
  Widget _getInitialState(BuildContext context, ChatData data) {
    return Container();
  }

  Widget _getLoadingState({required BuildContext context, ChatData? data}) {
    return Center(child: CircularProgressIndicator());
  }

  Widget _getLoadFailureState({
    required BuildContext context,
    required Failure failure,
    required ChatEvent retryAction,
  }) {
    return LoadFailureWidget(
      failure: failure,
      onRetry: () => context.read<ChatBloc>().add(retryAction),
    );
  }

  Widget _getLoadSuccessState({
    required BuildContext context,
    required ChatData data,
  }) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: data.messages.length,
            itemBuilder: (context, index) {
              final msg = data.messages.reversed.toList()[index];
              return ListTile(title: Text(msg.message));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<ChatBloc>().add(
                    ChatEvent.postMessage(_messageController.text),
                  );
                  _messageController.clear();
                },
                icon: Icon(Icons.send),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
