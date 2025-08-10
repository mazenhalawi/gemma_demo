import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gemma_demo/core/services/get_it.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';
import 'package:gemma_demo/features/model_selection/presentation/screen/model_selection_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
      body: Center(child: Text('Chat Screen')),
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
