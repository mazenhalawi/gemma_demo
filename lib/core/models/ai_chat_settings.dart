import 'package:flutter_gemma/core/tool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_settings.freezed.dart';

@freezed
class AiChatSettings with _$AiChatSettings {
  factory AiChatSettings({
    @Default(0.8) double temperature,
    @Default(1) int randomSeed,
    @Default(1) int topK,
    double? topP,
    @Default([]) List<Tool> tools,
    @Default(256) int tokenBuffer,
    @Default(false) bool isThinking,
    String? loraPath,
  }) = _AiChatSettings;
}
