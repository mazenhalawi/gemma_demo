import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';
import 'package:gemma_demo/core/models/ai_chat_settings.dart';
import 'package:gemma_demo/features/chat/domain/chat_entity.dart';

part 'chat_data.freezed.dart';

@freezed
class ChatData with _$ChatData {
  factory ChatData({
    required AiModel selectedAiModel,
    @Default([]) List<ChatMessageEntity> messages,
    AiChatSettings? aiChatSettings,
  }) = _ChatData;
}
