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
  final CreateChatAiModelUsecase createChatAiModelUsecase;
  final PostChatMessageUseCase postChatMessageUseCase;

  StreamSubscription? _subscription;

  ChatBloc({
    required AiModel selectedModel,
    required this.createChatAiModelUsecase,
    required this.postChatMessageUseCase,
  }) : super(
         ChatState.initial(data: ChatData(selectedAiModel: selectedModel)),
       ) {
    on<ChatEvent>((event, emit) async {
      await event.when(
        setupAiModel: (_) =>
            _mapSetupAiMmodelEventToState(event as ChatEventSetupAiModel, emit),
        createChat: () => _mapCreateChatEventToState(event, emit),
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
    state.data.inferenceModel?.close();
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

    if (state.data.inferenceChat == null) {
      emit(
        ChatState.displayAlert(
          title: 'Initialization Failure',
          message: "Chat model was not initialized.",
          data: state.data,
        ),
      );
      emit(
        ChatState.loadSuccess(
          data: state.data.copyWith(
            messages: [...state.data.messages, userMessage],
          ),
        ),
      );
      add(ChatEvent.createChat());
      return;
    }

    emit(
      ChatState.loading(
        data: state.data.copyWith(
          messages: [...state.data.messages, userMessage],
        ),
      ),
    );

    final response = await postChatMessageUseCase.call(
      inferenceChat: state.data.inferenceChat!,
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

  Future _mapCreateChatEventToState(ChatEvent event, Emitter emit) async {
    final inferenceModel = state.data.inferenceModel;

    if (inferenceModel != null) {
      emit(ChatState.loading(data: state.data));

      final inferenceChat = await inferenceModel.createChat(
        modelType: state.data.selectedAiModel.modelType,
      );

      emit(
        ChatState.loadSuccess(
          data: state.data.copyWith(inferenceChat: inferenceChat),
        ),
      );
    }
  }

  Future<void> _mapSetupAiMmodelEventToState(
    ChatEventSetupAiModel event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.loading(data: state.data));

    final result = await createChatAiModelUsecase.call(
      state.data.selectedAiModel,
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
      (inferenceModel) {
        emit(
          ChatState.loadSuccess(
            data: state.data.copyWith(inferenceModel: inferenceModel),
          ),
        );

        add(ChatEvent.createChat());
      },
    );
  }
}
