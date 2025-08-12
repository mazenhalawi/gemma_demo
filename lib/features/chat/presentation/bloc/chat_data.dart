import 'package:flutter_gemma/core/chat.dart';
import 'package:flutter_gemma/flutter_gemma_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';

part 'chat_data.freezed.dart';

@freezed
class ChatData with _$ChatData {
  factory ChatData({
    required AiModel selectedAiModel,
    InferenceModel? inferenceModel,
    InferenceChat? inferenceChat,
    @Default([]) List<ChatMessageEntity> messages,
  }) = _ChatData;
}
