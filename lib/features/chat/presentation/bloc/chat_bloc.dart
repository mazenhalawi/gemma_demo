import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/features/chat/domain/chat_usecases.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_data.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final CreateChatAiModelUsecase createChatAiModelUsecase;

  StreamSubscription? _subscription;

  ChatBloc({
    required AiModel selectedModel,
    required this.createChatAiModelUsecase,
  }) : super(
         ChatState.initial(data: ChatData(selectedAiModel: selectedModel)),
       ) {
    on<ChatEvent>((event, emit) async {
      await event.when(
        setupAiModel: (_) =>
            _mapSetupAiMmodelEventToState(event as ChatEventSetupAiModel, emit),
      );
    });

    add(ChatEvent.setupAiModel(selectedModel));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  void listenToUpdates(Bloc bloc) {
    _subscription ??= bloc.stream.listen((incomingState) {
      if (incomingState is ModelSelectionStateDidSelectAiModel) {
        add(ChatEvent.setupAiModel(incomingState.model));
      }
    });
  }

  void stopListeningToUpdates() {
    _subscription?.cancel();
    _subscription = null;
  }
}

extension MapEventToState on ChatBloc {
  Future<void> _mapSetupAiMmodelEventToState(
    ChatEventSetupAiModel event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading(data: state.data));
  }
}
