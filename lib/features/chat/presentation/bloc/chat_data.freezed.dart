// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatData {
  AiModel get selectedAiModel => throw _privateConstructorUsedError;
  InferenceModel? get inferenceModel => throw _privateConstructorUsedError;

  /// Create a copy of ChatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDataCopyWith<ChatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDataCopyWith<$Res> {
  factory $ChatDataCopyWith(ChatData value, $Res Function(ChatData) then) =
      _$ChatDataCopyWithImpl<$Res, ChatData>;
  @useResult
  $Res call({AiModel selectedAiModel, InferenceModel? inferenceModel});
}

/// @nodoc
class _$ChatDataCopyWithImpl<$Res, $Val extends ChatData>
    implements $ChatDataCopyWith<$Res> {
  _$ChatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAiModel = null,
    Object? inferenceModel = freezed,
  }) {
    return _then(
      _value.copyWith(
            selectedAiModel: null == selectedAiModel
                ? _value.selectedAiModel
                : selectedAiModel // ignore: cast_nullable_to_non_nullable
                      as AiModel,
            inferenceModel: freezed == inferenceModel
                ? _value.inferenceModel
                : inferenceModel // ignore: cast_nullable_to_non_nullable
                      as InferenceModel?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatDataImplCopyWith<$Res>
    implements $ChatDataCopyWith<$Res> {
  factory _$$ChatDataImplCopyWith(
    _$ChatDataImpl value,
    $Res Function(_$ChatDataImpl) then,
  ) = __$$ChatDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AiModel selectedAiModel, InferenceModel? inferenceModel});
}

/// @nodoc
class __$$ChatDataImplCopyWithImpl<$Res>
    extends _$ChatDataCopyWithImpl<$Res, _$ChatDataImpl>
    implements _$$ChatDataImplCopyWith<$Res> {
  __$$ChatDataImplCopyWithImpl(
    _$ChatDataImpl _value,
    $Res Function(_$ChatDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAiModel = null,
    Object? inferenceModel = freezed,
  }) {
    return _then(
      _$ChatDataImpl(
        selectedAiModel: null == selectedAiModel
            ? _value.selectedAiModel
            : selectedAiModel // ignore: cast_nullable_to_non_nullable
                  as AiModel,
        inferenceModel: freezed == inferenceModel
            ? _value.inferenceModel
            : inferenceModel // ignore: cast_nullable_to_non_nullable
                  as InferenceModel?,
      ),
    );
  }
}

/// @nodoc

class _$ChatDataImpl implements _ChatData {
  _$ChatDataImpl({required this.selectedAiModel, this.inferenceModel});

  @override
  final AiModel selectedAiModel;
  @override
  final InferenceModel? inferenceModel;

  @override
  String toString() {
    return 'ChatData(selectedAiModel: $selectedAiModel, inferenceModel: $inferenceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDataImpl &&
            (identical(other.selectedAiModel, selectedAiModel) ||
                other.selectedAiModel == selectedAiModel) &&
            (identical(other.inferenceModel, inferenceModel) ||
                other.inferenceModel == inferenceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedAiModel, inferenceModel);

  /// Create a copy of ChatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDataImplCopyWith<_$ChatDataImpl> get copyWith =>
      __$$ChatDataImplCopyWithImpl<_$ChatDataImpl>(this, _$identity);
}

abstract class _ChatData implements ChatData {
  factory _ChatData({
    required final AiModel selectedAiModel,
    final InferenceModel? inferenceModel,
  }) = _$ChatDataImpl;

  @override
  AiModel get selectedAiModel;
  @override
  InferenceModel? get inferenceModel;

  /// Create a copy of ChatData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDataImplCopyWith<_$ChatDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
