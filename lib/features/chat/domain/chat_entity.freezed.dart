// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatMessageEntity {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isAiResponse => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageEntityCopyWith<ChatMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEntityCopyWith<$Res> {
  factory $ChatMessageEntityCopyWith(
    ChatMessageEntity value,
    $Res Function(ChatMessageEntity) then,
  ) = _$ChatMessageEntityCopyWithImpl<$Res, ChatMessageEntity>;
  @useResult
  $Res call({String id, String message, bool isAiResponse});
}

/// @nodoc
class _$ChatMessageEntityCopyWithImpl<$Res, $Val extends ChatMessageEntity>
    implements $ChatMessageEntityCopyWith<$Res> {
  _$ChatMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isAiResponse = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            isAiResponse: null == isAiResponse
                ? _value.isAiResponse
                : isAiResponse // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageEntityImplCopyWith<$Res>
    implements $ChatMessageEntityCopyWith<$Res> {
  factory _$$ChatMessageEntityImplCopyWith(
    _$ChatMessageEntityImpl value,
    $Res Function(_$ChatMessageEntityImpl) then,
  ) = __$$ChatMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String message, bool isAiResponse});
}

/// @nodoc
class __$$ChatMessageEntityImplCopyWithImpl<$Res>
    extends _$ChatMessageEntityCopyWithImpl<$Res, _$ChatMessageEntityImpl>
    implements _$$ChatMessageEntityImplCopyWith<$Res> {
  __$$ChatMessageEntityImplCopyWithImpl(
    _$ChatMessageEntityImpl _value,
    $Res Function(_$ChatMessageEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isAiResponse = null,
  }) {
    return _then(
      _$ChatMessageEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        isAiResponse: null == isAiResponse
            ? _value.isAiResponse
            : isAiResponse // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChatMessageEntityImpl implements _ChatMessageEntity {
  _$ChatMessageEntityImpl({
    required this.id,
    required this.message,
    required this.isAiResponse,
  });

  @override
  final String id;
  @override
  final String message;
  @override
  final bool isAiResponse;

  @override
  String toString() {
    return 'ChatMessageEntity(id: $id, message: $message, isAiResponse: $isAiResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAiResponse, isAiResponse) ||
                other.isAiResponse == isAiResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, message, isAiResponse);

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      __$$ChatMessageEntityImplCopyWithImpl<_$ChatMessageEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ChatMessageEntity implements ChatMessageEntity {
  factory _ChatMessageEntity({
    required final String id,
    required final String message,
    required final bool isAiResponse,
  }) = _$ChatMessageEntityImpl;

  @override
  String get id;
  @override
  String get message;
  @override
  bool get isAiResponse;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
