import 'package:flutter_gemma/flutter_gemma_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gemma_demo/core/enums/ai_model.dart';

part 'chat_data.freezed.dart';

@freezed
class ChatData with _$ChatData {
  factory ChatData({
    required AiModel selectedAiModel,
    InferenceModel? inferenceModel,
  }) = _ChatData;
}
