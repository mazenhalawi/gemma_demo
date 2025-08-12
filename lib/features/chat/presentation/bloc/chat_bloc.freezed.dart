// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AiModel model) setupAiModel,
    required TResult Function() createChat,
    required TResult Function(String message) postMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AiModel model)? setupAiModel,
    TResult? Function()? createChat,
    TResult? Function(String message)? postMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AiModel model)? setupAiModel,
    TResult Function()? createChat,
    TResult Function(String message)? postMessage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventSetupAiModel value) setupAiModel,
    required TResult Function(ChatEventCreateChat value) createChat,
    required TResult Function(ChatEventPostMessage value) postMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult? Function(ChatEventCreateChat value)? createChat,
    TResult? Function(ChatEventPostMessage value)? postMessage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult Function(ChatEventCreateChat value)? createChat,
    TResult Function(ChatEventPostMessage value)? postMessage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatEventSetupAiModelImplCopyWith<$Res> {
  factory _$$ChatEventSetupAiModelImplCopyWith(
    _$ChatEventSetupAiModelImpl value,
    $Res Function(_$ChatEventSetupAiModelImpl) then,
  ) = __$$ChatEventSetupAiModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AiModel model});
}

/// @nodoc
class __$$ChatEventSetupAiModelImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventSetupAiModelImpl>
    implements _$$ChatEventSetupAiModelImplCopyWith<$Res> {
  __$$ChatEventSetupAiModelImplCopyWithImpl(
    _$ChatEventSetupAiModelImpl _value,
    $Res Function(_$ChatEventSetupAiModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null}) {
    return _then(
      _$ChatEventSetupAiModelImpl(
        null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as AiModel,
      ),
    );
  }
}

/// @nodoc

class _$ChatEventSetupAiModelImpl implements ChatEventSetupAiModel {
  const _$ChatEventSetupAiModelImpl(this.model);

  @override
  final AiModel model;

  @override
  String toString() {
    return 'ChatEvent.setupAiModel(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventSetupAiModelImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEventSetupAiModelImplCopyWith<_$ChatEventSetupAiModelImpl>
  get copyWith =>
      __$$ChatEventSetupAiModelImplCopyWithImpl<_$ChatEventSetupAiModelImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AiModel model) setupAiModel,
    required TResult Function() createChat,
    required TResult Function(String message) postMessage,
  }) {
    return setupAiModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AiModel model)? setupAiModel,
    TResult? Function()? createChat,
    TResult? Function(String message)? postMessage,
  }) {
    return setupAiModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AiModel model)? setupAiModel,
    TResult Function()? createChat,
    TResult Function(String message)? postMessage,
    required TResult orElse(),
  }) {
    if (setupAiModel != null) {
      return setupAiModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventSetupAiModel value) setupAiModel,
    required TResult Function(ChatEventCreateChat value) createChat,
    required TResult Function(ChatEventPostMessage value) postMessage,
  }) {
    return setupAiModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult? Function(ChatEventCreateChat value)? createChat,
    TResult? Function(ChatEventPostMessage value)? postMessage,
  }) {
    return setupAiModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult Function(ChatEventCreateChat value)? createChat,
    TResult Function(ChatEventPostMessage value)? postMessage,
    required TResult orElse(),
  }) {
    if (setupAiModel != null) {
      return setupAiModel(this);
    }
    return orElse();
  }
}

abstract class ChatEventSetupAiModel implements ChatEvent {
  const factory ChatEventSetupAiModel(final AiModel model) =
      _$ChatEventSetupAiModelImpl;

  AiModel get model;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatEventSetupAiModelImplCopyWith<_$ChatEventSetupAiModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatEventCreateChatImplCopyWith<$Res> {
  factory _$$ChatEventCreateChatImplCopyWith(
    _$ChatEventCreateChatImpl value,
    $Res Function(_$ChatEventCreateChatImpl) then,
  ) = __$$ChatEventCreateChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatEventCreateChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventCreateChatImpl>
    implements _$$ChatEventCreateChatImplCopyWith<$Res> {
  __$$ChatEventCreateChatImplCopyWithImpl(
    _$ChatEventCreateChatImpl _value,
    $Res Function(_$ChatEventCreateChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatEventCreateChatImpl implements ChatEventCreateChat {
  const _$ChatEventCreateChatImpl();

  @override
  String toString() {
    return 'ChatEvent.createChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventCreateChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AiModel model) setupAiModel,
    required TResult Function() createChat,
    required TResult Function(String message) postMessage,
  }) {
    return createChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AiModel model)? setupAiModel,
    TResult? Function()? createChat,
    TResult? Function(String message)? postMessage,
  }) {
    return createChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AiModel model)? setupAiModel,
    TResult Function()? createChat,
    TResult Function(String message)? postMessage,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventSetupAiModel value) setupAiModel,
    required TResult Function(ChatEventCreateChat value) createChat,
    required TResult Function(ChatEventPostMessage value) postMessage,
  }) {
    return createChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult? Function(ChatEventCreateChat value)? createChat,
    TResult? Function(ChatEventPostMessage value)? postMessage,
  }) {
    return createChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult Function(ChatEventCreateChat value)? createChat,
    TResult Function(ChatEventPostMessage value)? postMessage,
    required TResult orElse(),
  }) {
    if (createChat != null) {
      return createChat(this);
    }
    return orElse();
  }
}

abstract class ChatEventCreateChat implements ChatEvent {
  const factory ChatEventCreateChat() = _$ChatEventCreateChatImpl;
}

/// @nodoc
abstract class _$$ChatEventPostMessageImplCopyWith<$Res> {
  factory _$$ChatEventPostMessageImplCopyWith(
    _$ChatEventPostMessageImpl value,
    $Res Function(_$ChatEventPostMessageImpl) then,
  ) = __$$ChatEventPostMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ChatEventPostMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventPostMessageImpl>
    implements _$$ChatEventPostMessageImplCopyWith<$Res> {
  __$$ChatEventPostMessageImplCopyWithImpl(
    _$ChatEventPostMessageImpl _value,
    $Res Function(_$ChatEventPostMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ChatEventPostMessageImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatEventPostMessageImpl implements ChatEventPostMessage {
  const _$ChatEventPostMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.postMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventPostMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEventPostMessageImplCopyWith<_$ChatEventPostMessageImpl>
  get copyWith =>
      __$$ChatEventPostMessageImplCopyWithImpl<_$ChatEventPostMessageImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AiModel model) setupAiModel,
    required TResult Function() createChat,
    required TResult Function(String message) postMessage,
  }) {
    return postMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AiModel model)? setupAiModel,
    TResult? Function()? createChat,
    TResult? Function(String message)? postMessage,
  }) {
    return postMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AiModel model)? setupAiModel,
    TResult Function()? createChat,
    TResult Function(String message)? postMessage,
    required TResult orElse(),
  }) {
    if (postMessage != null) {
      return postMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventSetupAiModel value) setupAiModel,
    required TResult Function(ChatEventCreateChat value) createChat,
    required TResult Function(ChatEventPostMessage value) postMessage,
  }) {
    return postMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult? Function(ChatEventCreateChat value)? createChat,
    TResult? Function(ChatEventPostMessage value)? postMessage,
  }) {
    return postMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventSetupAiModel value)? setupAiModel,
    TResult Function(ChatEventCreateChat value)? createChat,
    TResult Function(ChatEventPostMessage value)? postMessage,
    required TResult orElse(),
  }) {
    if (postMessage != null) {
      return postMessage(this);
    }
    return orElse();
  }
}

abstract class ChatEventPostMessage implements ChatEvent {
  const factory ChatEventPostMessage(final String message) =
      _$ChatEventPostMessageImpl;

  String get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatEventPostMessageImplCopyWith<_$ChatEventPostMessageImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  ChatData get data => throw _privateConstructorUsedError;
  bool get isListenerState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatData data, bool isListenerState) initial,
    required TResult Function(ChatData data, bool isListenerState) loading,
    required TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )
    loadFailure,
    required TResult Function(ChatData data, bool isListenerState) loadSuccess,
    required TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )
    displayAlert,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatData data, bool isListenerState)? initial,
    TResult? Function(ChatData data, bool isListenerState)? loading,
    TResult? Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult? Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult? Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatData data, bool isListenerState)? initial,
    TResult Function(ChatData data, bool isListenerState)? loading,
    TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateLoadFailure value) loadFailure,
    required TResult Function(ChatStateLoadSuccess value) loadSuccess,
    required TResult Function(ChatStateDisplayAlert value) displayAlert,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStateInitial value)? initial,
    TResult? Function(ChatStateLoading value)? loading,
    TResult? Function(ChatStateLoadFailure value)? loadFailure,
    TResult? Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult? Function(ChatStateDisplayAlert value)? displayAlert,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateLoadFailure value)? loadFailure,
    TResult Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult Function(ChatStateDisplayAlert value)? displayAlert,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({ChatData data, bool isListenerState});

  $ChatDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isListenerState = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as ChatData,
            isListenerState: null == isListenerState
                ? _value.isListenerState
                : isListenerState // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatDataCopyWith<$Res> get data {
    return $ChatDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateInitialImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateInitialImplCopyWith(
    _$ChatStateInitialImpl value,
    $Res Function(_$ChatStateInitialImpl) then,
  ) = __$$ChatStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatData data, bool isListenerState});

  @override
  $ChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChatStateInitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateInitialImpl>
    implements _$$ChatStateInitialImplCopyWith<$Res> {
  __$$ChatStateInitialImplCopyWithImpl(
    _$ChatStateInitialImpl _value,
    $Res Function(_$ChatStateInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isListenerState = null}) {
    return _then(
      _$ChatStateInitialImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ChatData,
        isListenerState: null == isListenerState
            ? _value.isListenerState
            : isListenerState // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateInitialImpl implements ChatStateInitial {
  const _$ChatStateInitialImpl({
    required this.data,
    this.isListenerState = false,
  });

  @override
  final ChatData data;
  @override
  @JsonKey()
  final bool isListenerState;

  @override
  String toString() {
    return 'ChatState.initial(data: $data, isListenerState: $isListenerState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isListenerState, isListenerState) ||
                other.isListenerState == isListenerState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isListenerState);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateInitialImplCopyWith<_$ChatStateInitialImpl> get copyWith =>
      __$$ChatStateInitialImplCopyWithImpl<_$ChatStateInitialImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatData data, bool isListenerState) initial,
    required TResult Function(ChatData data, bool isListenerState) loading,
    required TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )
    loadFailure,
    required TResult Function(ChatData data, bool isListenerState) loadSuccess,
    required TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )
    displayAlert,
  }) {
    return initial(data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatData data, bool isListenerState)? initial,
    TResult? Function(ChatData data, bool isListenerState)? loading,
    TResult? Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult? Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult? Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
  }) {
    return initial?.call(data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatData data, bool isListenerState)? initial,
    TResult Function(ChatData data, bool isListenerState)? loading,
    TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, isListenerState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateLoadFailure value) loadFailure,
    required TResult Function(ChatStateLoadSuccess value) loadSuccess,
    required TResult Function(ChatStateDisplayAlert value) displayAlert,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStateInitial value)? initial,
    TResult? Function(ChatStateLoading value)? loading,
    TResult? Function(ChatStateLoadFailure value)? loadFailure,
    TResult? Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult? Function(ChatStateDisplayAlert value)? displayAlert,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateLoadFailure value)? loadFailure,
    TResult Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult Function(ChatStateDisplayAlert value)? displayAlert,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatStateInitial implements ChatState {
  const factory ChatStateInitial({
    required final ChatData data,
    final bool isListenerState,
  }) = _$ChatStateInitialImpl;

  @override
  ChatData get data;
  @override
  bool get isListenerState;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateInitialImplCopyWith<_$ChatStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStateLoadingImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateLoadingImplCopyWith(
    _$ChatStateLoadingImpl value,
    $Res Function(_$ChatStateLoadingImpl) then,
  ) = __$$ChatStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatData data, bool isListenerState});

  @override
  $ChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChatStateLoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateLoadingImpl>
    implements _$$ChatStateLoadingImplCopyWith<$Res> {
  __$$ChatStateLoadingImplCopyWithImpl(
    _$ChatStateLoadingImpl _value,
    $Res Function(_$ChatStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isListenerState = null}) {
    return _then(
      _$ChatStateLoadingImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ChatData,
        isListenerState: null == isListenerState
            ? _value.isListenerState
            : isListenerState // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateLoadingImpl implements ChatStateLoading {
  const _$ChatStateLoadingImpl({
    required this.data,
    this.isListenerState = false,
  });

  @override
  final ChatData data;
  @override
  @JsonKey()
  final bool isListenerState;

  @override
  String toString() {
    return 'ChatState.loading(data: $data, isListenerState: $isListenerState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateLoadingImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isListenerState, isListenerState) ||
                other.isListenerState == isListenerState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isListenerState);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateLoadingImplCopyWith<_$ChatStateLoadingImpl> get copyWith =>
      __$$ChatStateLoadingImplCopyWithImpl<_$ChatStateLoadingImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatData data, bool isListenerState) initial,
    required TResult Function(ChatData data, bool isListenerState) loading,
    required TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )
    loadFailure,
    required TResult Function(ChatData data, bool isListenerState) loadSuccess,
    required TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )
    displayAlert,
  }) {
    return loading(data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatData data, bool isListenerState)? initial,
    TResult? Function(ChatData data, bool isListenerState)? loading,
    TResult? Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult? Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult? Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
  }) {
    return loading?.call(data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatData data, bool isListenerState)? initial,
    TResult Function(ChatData data, bool isListenerState)? loading,
    TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, isListenerState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateLoadFailure value) loadFailure,
    required TResult Function(ChatStateLoadSuccess value) loadSuccess,
    required TResult Function(ChatStateDisplayAlert value) displayAlert,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStateInitial value)? initial,
    TResult? Function(ChatStateLoading value)? loading,
    TResult? Function(ChatStateLoadFailure value)? loadFailure,
    TResult? Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult? Function(ChatStateDisplayAlert value)? displayAlert,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateLoadFailure value)? loadFailure,
    TResult Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult Function(ChatStateDisplayAlert value)? displayAlert,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatStateLoading implements ChatState {
  const factory ChatStateLoading({
    required final ChatData data,
    final bool isListenerState,
  }) = _$ChatStateLoadingImpl;

  @override
  ChatData get data;
  @override
  bool get isListenerState;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateLoadingImplCopyWith<_$ChatStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStateLoadFailureImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateLoadFailureImplCopyWith(
    _$ChatStateLoadFailureImpl value,
    $Res Function(_$ChatStateLoadFailureImpl) then,
  ) = __$$ChatStateLoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Failure failure,
    ChatEvent retryEvent,
    ChatData data,
    bool isListenerState,
  });

  $ChatEventCopyWith<$Res> get retryEvent;
  @override
  $ChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChatStateLoadFailureImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateLoadFailureImpl>
    implements _$$ChatStateLoadFailureImplCopyWith<$Res> {
  __$$ChatStateLoadFailureImplCopyWithImpl(
    _$ChatStateLoadFailureImpl _value,
    $Res Function(_$ChatStateLoadFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? retryEvent = null,
    Object? data = null,
    Object? isListenerState = null,
  }) {
    return _then(
      _$ChatStateLoadFailureImpl(
        failure: null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
        retryEvent: null == retryEvent
            ? _value.retryEvent
            : retryEvent // ignore: cast_nullable_to_non_nullable
                  as ChatEvent,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ChatData,
        isListenerState: null == isListenerState
            ? _value.isListenerState
            : isListenerState // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatEventCopyWith<$Res> get retryEvent {
    return $ChatEventCopyWith<$Res>(_value.retryEvent, (value) {
      return _then(_value.copyWith(retryEvent: value));
    });
  }
}

/// @nodoc

class _$ChatStateLoadFailureImpl implements ChatStateLoadFailure {
  const _$ChatStateLoadFailureImpl({
    required this.failure,
    required this.retryEvent,
    required this.data,
    this.isListenerState = false,
  });

  @override
  final Failure failure;
  @override
  final ChatEvent retryEvent;
  @override
  final ChatData data;
  @override
  @JsonKey()
  final bool isListenerState;

  @override
  String toString() {
    return 'ChatState.loadFailure(failure: $failure, retryEvent: $retryEvent, data: $data, isListenerState: $isListenerState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.retryEvent, retryEvent) ||
                other.retryEvent == retryEvent) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isListenerState, isListenerState) ||
                other.isListenerState == isListenerState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, retryEvent, data, isListenerState);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateLoadFailureImplCopyWith<_$ChatStateLoadFailureImpl>
  get copyWith =>
      __$$ChatStateLoadFailureImplCopyWithImpl<_$ChatStateLoadFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatData data, bool isListenerState) initial,
    required TResult Function(ChatData data, bool isListenerState) loading,
    required TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )
    loadFailure,
    required TResult Function(ChatData data, bool isListenerState) loadSuccess,
    required TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )
    displayAlert,
  }) {
    return loadFailure(failure, retryEvent, data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatData data, bool isListenerState)? initial,
    TResult? Function(ChatData data, bool isListenerState)? loading,
    TResult? Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult? Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult? Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
  }) {
    return loadFailure?.call(failure, retryEvent, data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatData data, bool isListenerState)? initial,
    TResult Function(ChatData data, bool isListenerState)? loading,
    TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure, retryEvent, data, isListenerState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateLoadFailure value) loadFailure,
    required TResult Function(ChatStateLoadSuccess value) loadSuccess,
    required TResult Function(ChatStateDisplayAlert value) displayAlert,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStateInitial value)? initial,
    TResult? Function(ChatStateLoading value)? loading,
    TResult? Function(ChatStateLoadFailure value)? loadFailure,
    TResult? Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult? Function(ChatStateDisplayAlert value)? displayAlert,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateLoadFailure value)? loadFailure,
    TResult Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult Function(ChatStateDisplayAlert value)? displayAlert,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ChatStateLoadFailure implements ChatState {
  const factory ChatStateLoadFailure({
    required final Failure failure,
    required final ChatEvent retryEvent,
    required final ChatData data,
    final bool isListenerState,
  }) = _$ChatStateLoadFailureImpl;

  Failure get failure;
  ChatEvent get retryEvent;
  @override
  ChatData get data;
  @override
  bool get isListenerState;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateLoadFailureImplCopyWith<_$ChatStateLoadFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStateLoadSuccessImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateLoadSuccessImplCopyWith(
    _$ChatStateLoadSuccessImpl value,
    $Res Function(_$ChatStateLoadSuccessImpl) then,
  ) = __$$ChatStateLoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatData data, bool isListenerState});

  @override
  $ChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChatStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateLoadSuccessImpl>
    implements _$$ChatStateLoadSuccessImplCopyWith<$Res> {
  __$$ChatStateLoadSuccessImplCopyWithImpl(
    _$ChatStateLoadSuccessImpl _value,
    $Res Function(_$ChatStateLoadSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isListenerState = null}) {
    return _then(
      _$ChatStateLoadSuccessImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ChatData,
        isListenerState: null == isListenerState
            ? _value.isListenerState
            : isListenerState // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateLoadSuccessImpl implements ChatStateLoadSuccess {
  const _$ChatStateLoadSuccessImpl({
    required this.data,
    this.isListenerState = false,
  });

  @override
  final ChatData data;
  @override
  @JsonKey()
  final bool isListenerState;

  @override
  String toString() {
    return 'ChatState.loadSuccess(data: $data, isListenerState: $isListenerState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateLoadSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isListenerState, isListenerState) ||
                other.isListenerState == isListenerState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isListenerState);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateLoadSuccessImplCopyWith<_$ChatStateLoadSuccessImpl>
  get copyWith =>
      __$$ChatStateLoadSuccessImplCopyWithImpl<_$ChatStateLoadSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatData data, bool isListenerState) initial,
    required TResult Function(ChatData data, bool isListenerState) loading,
    required TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )
    loadFailure,
    required TResult Function(ChatData data, bool isListenerState) loadSuccess,
    required TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )
    displayAlert,
  }) {
    return loadSuccess(data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatData data, bool isListenerState)? initial,
    TResult? Function(ChatData data, bool isListenerState)? loading,
    TResult? Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult? Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult? Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
  }) {
    return loadSuccess?.call(data, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatData data, bool isListenerState)? initial,
    TResult Function(ChatData data, bool isListenerState)? loading,
    TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(data, isListenerState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateLoadFailure value) loadFailure,
    required TResult Function(ChatStateLoadSuccess value) loadSuccess,
    required TResult Function(ChatStateDisplayAlert value) displayAlert,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStateInitial value)? initial,
    TResult? Function(ChatStateLoading value)? loading,
    TResult? Function(ChatStateLoadFailure value)? loadFailure,
    TResult? Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult? Function(ChatStateDisplayAlert value)? displayAlert,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateLoadFailure value)? loadFailure,
    TResult Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult Function(ChatStateDisplayAlert value)? displayAlert,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatStateLoadSuccess implements ChatState {
  const factory ChatStateLoadSuccess({
    required final ChatData data,
    final bool isListenerState,
  }) = _$ChatStateLoadSuccessImpl;

  @override
  ChatData get data;
  @override
  bool get isListenerState;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateLoadSuccessImplCopyWith<_$ChatStateLoadSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatStateDisplayAlertImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateDisplayAlertImplCopyWith(
    _$ChatStateDisplayAlertImpl value,
    $Res Function(_$ChatStateDisplayAlertImpl) then,
  ) = __$$ChatStateDisplayAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String message,
    ChatData data,
    bool shouldPopOut,
    bool isListenerState,
  });

  @override
  $ChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChatStateDisplayAlertImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateDisplayAlertImpl>
    implements _$$ChatStateDisplayAlertImplCopyWith<$Res> {
  __$$ChatStateDisplayAlertImplCopyWithImpl(
    _$ChatStateDisplayAlertImpl _value,
    $Res Function(_$ChatStateDisplayAlertImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? data = null,
    Object? shouldPopOut = null,
    Object? isListenerState = null,
  }) {
    return _then(
      _$ChatStateDisplayAlertImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ChatData,
        shouldPopOut: null == shouldPopOut
            ? _value.shouldPopOut
            : shouldPopOut // ignore: cast_nullable_to_non_nullable
                  as bool,
        isListenerState: null == isListenerState
            ? _value.isListenerState
            : isListenerState // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateDisplayAlertImpl implements ChatStateDisplayAlert {
  const _$ChatStateDisplayAlertImpl({
    required this.title,
    required this.message,
    required this.data,
    this.shouldPopOut = false,
    this.isListenerState = true,
  });

  @override
  final String title;
  @override
  final String message;
  @override
  final ChatData data;
  @override
  @JsonKey()
  final bool shouldPopOut;
  @override
  @JsonKey()
  final bool isListenerState;

  @override
  String toString() {
    return 'ChatState.displayAlert(title: $title, message: $message, data: $data, shouldPopOut: $shouldPopOut, isListenerState: $isListenerState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateDisplayAlertImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.shouldPopOut, shouldPopOut) ||
                other.shouldPopOut == shouldPopOut) &&
            (identical(other.isListenerState, isListenerState) ||
                other.isListenerState == isListenerState));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    message,
    data,
    shouldPopOut,
    isListenerState,
  );

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateDisplayAlertImplCopyWith<_$ChatStateDisplayAlertImpl>
  get copyWith =>
      __$$ChatStateDisplayAlertImplCopyWithImpl<_$ChatStateDisplayAlertImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatData data, bool isListenerState) initial,
    required TResult Function(ChatData data, bool isListenerState) loading,
    required TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )
    loadFailure,
    required TResult Function(ChatData data, bool isListenerState) loadSuccess,
    required TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )
    displayAlert,
  }) {
    return displayAlert(title, message, data, shouldPopOut, isListenerState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatData data, bool isListenerState)? initial,
    TResult? Function(ChatData data, bool isListenerState)? loading,
    TResult? Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult? Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult? Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
  }) {
    return displayAlert?.call(
      title,
      message,
      data,
      shouldPopOut,
      isListenerState,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatData data, bool isListenerState)? initial,
    TResult Function(ChatData data, bool isListenerState)? loading,
    TResult Function(
      Failure failure,
      ChatEvent retryEvent,
      ChatData data,
      bool isListenerState,
    )?
    loadFailure,
    TResult Function(ChatData data, bool isListenerState)? loadSuccess,
    TResult Function(
      String title,
      String message,
      ChatData data,
      bool shouldPopOut,
      bool isListenerState,
    )?
    displayAlert,
    required TResult orElse(),
  }) {
    if (displayAlert != null) {
      return displayAlert(title, message, data, shouldPopOut, isListenerState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateLoadFailure value) loadFailure,
    required TResult Function(ChatStateLoadSuccess value) loadSuccess,
    required TResult Function(ChatStateDisplayAlert value) displayAlert,
  }) {
    return displayAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatStateInitial value)? initial,
    TResult? Function(ChatStateLoading value)? loading,
    TResult? Function(ChatStateLoadFailure value)? loadFailure,
    TResult? Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult? Function(ChatStateDisplayAlert value)? displayAlert,
  }) {
    return displayAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateLoadFailure value)? loadFailure,
    TResult Function(ChatStateLoadSuccess value)? loadSuccess,
    TResult Function(ChatStateDisplayAlert value)? displayAlert,
    required TResult orElse(),
  }) {
    if (displayAlert != null) {
      return displayAlert(this);
    }
    return orElse();
  }
}

abstract class ChatStateDisplayAlert implements ChatState {
  const factory ChatStateDisplayAlert({
    required final String title,
    required final String message,
    required final ChatData data,
    final bool shouldPopOut,
    final bool isListenerState,
  }) = _$ChatStateDisplayAlertImpl;

  String get title;
  String get message;
  @override
  ChatData get data;
  bool get shouldPopOut;
  @override
  bool get isListenerState;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateDisplayAlertImplCopyWith<_$ChatStateDisplayAlertImpl>
  get copyWith => throw _privateConstructorUsedError;
}
