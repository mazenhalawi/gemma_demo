import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/failure.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';
import 'package:gemma_demo/features/chat/domain/chat_usecases.dart';
import 'package:gemma_demo/features/chat/presentation/bloc/chat_data.dart';
import 'package:gemma_demo/features/model_selection/presentation/bloc/model_selection_bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final SetupAiModelUsecase setupChatAiModelUsecase;
  final PostChatMessageUseCase postChatMessageUseCase;

  StreamSubscription? _subscription;

  ChatBloc({
    required AiModel selectedModel,
    required this.setupChatAiModelUsecase,
    required this.postChatMessageUseCase,
  }) : super(
         ChatState.initial(data: ChatData(selectedAiModel: selectedModel)),
       ) {
    on<ChatEvent>((event, emit) async {
      await event.when(
        setupAiModel: (_) =>
            _mapSetupAiMmodelEventToState(event as ChatEventSetupAiModel, emit),
        postMessage: (_) =>
            _mapPostMessageEventToState(event as ChatEventPostMessage, emit),
      );
    }, transformer: sequential());

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
  Future _mapPostMessageEventToState(
    ChatEventPostMessage event,
    Emitter emit,
  ) async {
    final userMessage = ChatMessageEntity.user(event.message);

    emit(
      ChatState.loading(
        data: state.data.copyWith(
          messages: [...state.data.messages, userMessage],
        ),
      ),
    );

    final response = await postChatMessageUseCase.call(
      chatMessage: ChatMessageEntity.user(event.message),
    );

    response.fold(
      (failure) {
        emit(
          ChatState.displayAlert(
            title: "Failure",
            message: failure.message,
            data: state.data,
          ),
        );
        emit(ChatState.loadSuccess(data: state.data));
      },
      (messageReponse) {
        final chat = [...state.data.messages, messageReponse];
        emit(ChatState.loadSuccess(data: state.data.copyWith(messages: chat)));
      },
    );
  }

  Future<void> _mapSetupAiMmodelEventToState(
    ChatEventSetupAiModel event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading(data: state.data));

    final result = await setupChatAiModelUsecase.call(
      aiModel: state.data.selectedAiModel,
      settings: state.data.aiChatSettings,
    );

    result.fold(
      (failure) {
        emit(
          ChatState.loadFailure(
            failure: failure,
            retryEvent: event,
            data: state.data,
          ),
        );
      },
      (_) {
        emit(ChatState.loadSuccess(data: state.data));
      },
    );
  }
}
