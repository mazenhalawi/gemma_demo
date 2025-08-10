import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_data.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  StreamSubscription? _subscription;

  ChatBloc({required AiModel selectedModel})
    : super(ChatState.initial(data: ChatData(selectedAiModel: selectedModel))) {
    on<ChatEvent>((event, emit) async {
      await event.when(started: () => _mapStartedEventToState(event, emit));
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  void listenToUpdates(Bloc bloc) {
    _subscription ??= bloc.stream.listen((incomingState) {});
  }
}

extension MapEventToState on ChatBloc {
  Future<void> _mapStartedEventToState(
    ChatEvent event,
    Emitter<ChatState> emit,
  ) async {}
}
