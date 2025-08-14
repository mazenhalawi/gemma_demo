// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AiChatSettings {
  double get temperature => throw _privateConstructorUsedError;
  int get randomSeed => throw _privateConstructorUsedError;
  int get topK => throw _privateConstructorUsedError;
  double? get topP => throw _privateConstructorUsedError;
  List<Tool> get tools => throw _privateConstructorUsedError;
  int get tokenBuffer => throw _privateConstructorUsedError;
  bool get isThinking => throw _privateConstructorUsedError;
  String? get loraPath => throw _privateConstructorUsedError;

  /// Create a copy of AiChatSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiChatSettingsCopyWith<AiChatSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatSettingsCopyWith<$Res> {
  factory $AiChatSettingsCopyWith(
    AiChatSettings value,
    $Res Function(AiChatSettings) then,
  ) = _$AiChatSettingsCopyWithImpl<$Res, AiChatSettings>;
  @useResult
  $Res call({
    double temperature,
    int randomSeed,
    int topK,
    double? topP,
    List<Tool> tools,
    int tokenBuffer,
    bool isThinking,
    String? loraPath,
  });
}

/// @nodoc
class _$AiChatSettingsCopyWithImpl<$Res, $Val extends AiChatSettings>
    implements $AiChatSettingsCopyWith<$Res> {
  _$AiChatSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiChatSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? randomSeed = null,
    Object? topK = null,
    Object? topP = freezed,
    Object? tools = null,
    Object? tokenBuffer = null,
    Object? isThinking = null,
    Object? loraPath = freezed,
  }) {
    return _then(
      _value.copyWith(
            temperature: null == temperature
                ? _value.temperature
                : temperature // ignore: cast_nullable_to_non_nullable
                      as double,
            randomSeed: null == randomSeed
                ? _value.randomSeed
                : randomSeed // ignore: cast_nullable_to_non_nullable
                      as int,
            topK: null == topK
                ? _value.topK
                : topK // ignore: cast_nullable_to_non_nullable
                      as int,
            topP: freezed == topP
                ? _value.topP
                : topP // ignore: cast_nullable_to_non_nullable
                      as double?,
            tools: null == tools
                ? _value.tools
                : tools // ignore: cast_nullable_to_non_nullable
                      as List<Tool>,
            tokenBuffer: null == tokenBuffer
                ? _value.tokenBuffer
                : tokenBuffer // ignore: cast_nullable_to_non_nullable
                      as int,
            isThinking: null == isThinking
                ? _value.isThinking
                : isThinking // ignore: cast_nullable_to_non_nullable
                      as bool,
            loraPath: freezed == loraPath
                ? _value.loraPath
                : loraPath // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AiChatSettingsImplCopyWith<$Res>
    implements $AiChatSettingsCopyWith<$Res> {
  factory _$$AiChatSettingsImplCopyWith(
    _$AiChatSettingsImpl value,
    $Res Function(_$AiChatSettingsImpl) then,
  ) = __$$AiChatSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double temperature,
    int randomSeed,
    int topK,
    double? topP,
    List<Tool> tools,
    int tokenBuffer,
    bool isThinking,
    String? loraPath,
  });
}

/// @nodoc
class __$$AiChatSettingsImplCopyWithImpl<$Res>
    extends _$AiChatSettingsCopyWithImpl<$Res, _$AiChatSettingsImpl>
    implements _$$AiChatSettingsImplCopyWith<$Res> {
  __$$AiChatSettingsImplCopyWithImpl(
    _$AiChatSettingsImpl _value,
    $Res Function(_$AiChatSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AiChatSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? randomSeed = null,
    Object? topK = null,
    Object? topP = freezed,
    Object? tools = null,
    Object? tokenBuffer = null,
    Object? isThinking = null,
    Object? loraPath = freezed,
  }) {
    return _then(
      _$AiChatSettingsImpl(
        temperature: null == temperature
            ? _value.temperature
            : temperature // ignore: cast_nullable_to_non_nullable
                  as double,
        randomSeed: null == randomSeed
            ? _value.randomSeed
            : randomSeed // ignore: cast_nullable_to_non_nullable
                  as int,
        topK: null == topK
            ? _value.topK
            : topK // ignore: cast_nullable_to_non_nullable
                  as int,
        topP: freezed == topP
            ? _value.topP
            : topP // ignore: cast_nullable_to_non_nullable
                  as double?,
        tools: null == tools
            ? _value._tools
            : tools // ignore: cast_nullable_to_non_nullable
                  as List<Tool>,
        tokenBuffer: null == tokenBuffer
            ? _value.tokenBuffer
            : tokenBuffer // ignore: cast_nullable_to_non_nullable
                  as int,
        isThinking: null == isThinking
            ? _value.isThinking
            : isThinking // ignore: cast_nullable_to_non_nullable
                  as bool,
        loraPath: freezed == loraPath
            ? _value.loraPath
            : loraPath // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AiChatSettingsImpl implements _AiChatSettings {
  _$AiChatSettingsImpl({
    this.temperature = 0.8,
    this.randomSeed = 1,
    this.topK = 1,
    this.topP,
    final List<Tool> tools = const [],
    this.tokenBuffer = 256,
    this.isThinking = false,
    this.loraPath,
  }) : _tools = tools;

  @override
  @JsonKey()
  final double temperature;
  @override
  @JsonKey()
  final int randomSeed;
  @override
  @JsonKey()
  final int topK;
  @override
  final double? topP;
  final List<Tool> _tools;
  @override
  @JsonKey()
  List<Tool> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  @JsonKey()
  final int tokenBuffer;
  @override
  @JsonKey()
  final bool isThinking;
  @override
  final String? loraPath;

  @override
  String toString() {
    return 'AiChatSettings(temperature: $temperature, randomSeed: $randomSeed, topK: $topK, topP: $topP, tools: $tools, tokenBuffer: $tokenBuffer, isThinking: $isThinking, loraPath: $loraPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiChatSettingsImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.randomSeed, randomSeed) ||
                other.randomSeed == randomSeed) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.tokenBuffer, tokenBuffer) ||
                other.tokenBuffer == tokenBuffer) &&
            (identical(other.isThinking, isThinking) ||
                other.isThinking == isThinking) &&
            (identical(other.loraPath, loraPath) ||
                other.loraPath == loraPath));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    temperature,
    randomSeed,
    topK,
    topP,
    const DeepCollectionEquality().hash(_tools),
    tokenBuffer,
    isThinking,
    loraPath,
  );

  /// Create a copy of AiChatSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiChatSettingsImplCopyWith<_$AiChatSettingsImpl> get copyWith =>
      __$$AiChatSettingsImplCopyWithImpl<_$AiChatSettingsImpl>(
        this,
        _$identity,
      );
}

abstract class _AiChatSettings implements AiChatSettings {
  factory _AiChatSettings({
    final double temperature,
    final int randomSeed,
    final int topK,
    final double? topP,
    final List<Tool> tools,
    final int tokenBuffer,
    final bool isThinking,
    final String? loraPath,
  }) = _$AiChatSettingsImpl;

  @override
  double get temperature;
  @override
  int get randomSeed;
  @override
  int get topK;
  @override
  double? get topP;
  @override
  List<Tool> get tools;
  @override
  int get tokenBuffer;
  @override
  bool get isThinking;
  @override
  String? get loraPath;

  /// Create a copy of AiChatSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiChatSettingsImplCopyWith<_$AiChatSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
