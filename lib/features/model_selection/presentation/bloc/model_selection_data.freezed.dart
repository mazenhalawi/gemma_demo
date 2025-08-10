// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_selection_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModelSelectionData {
  List<AiModel> get aiModels => throw _privateConstructorUsedError;
  List<AiModel> get downloadedModels => throw _privateConstructorUsedError;
  Map<AiModel, Stream<TaskUpdate>> get downloadingTasks =>
      throw _privateConstructorUsedError;

  /// Create a copy of ModelSelectionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelSelectionDataCopyWith<ModelSelectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelSelectionDataCopyWith<$Res> {
  factory $ModelSelectionDataCopyWith(
    ModelSelectionData value,
    $Res Function(ModelSelectionData) then,
  ) = _$ModelSelectionDataCopyWithImpl<$Res, ModelSelectionData>;
  @useResult
  $Res call({
    List<AiModel> aiModels,
    List<AiModel> downloadedModels,
    Map<AiModel, Stream<TaskUpdate>> downloadingTasks,
  });
}

/// @nodoc
class _$ModelSelectionDataCopyWithImpl<$Res, $Val extends ModelSelectionData>
    implements $ModelSelectionDataCopyWith<$Res> {
  _$ModelSelectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelSelectionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiModels = null,
    Object? downloadedModels = null,
    Object? downloadingTasks = null,
  }) {
    return _then(
      _value.copyWith(
            aiModels: null == aiModels
                ? _value.aiModels
                : aiModels // ignore: cast_nullable_to_non_nullable
                      as List<AiModel>,
            downloadedModels: null == downloadedModels
                ? _value.downloadedModels
                : downloadedModels // ignore: cast_nullable_to_non_nullable
                      as List<AiModel>,
            downloadingTasks: null == downloadingTasks
                ? _value.downloadingTasks
                : downloadingTasks // ignore: cast_nullable_to_non_nullable
                      as Map<AiModel, Stream<TaskUpdate>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModelSelectionDataImplCopyWith<$Res>
    implements $ModelSelectionDataCopyWith<$Res> {
  factory _$$ModelSelectionDataImplCopyWith(
    _$ModelSelectionDataImpl value,
    $Res Function(_$ModelSelectionDataImpl) then,
  ) = __$$ModelSelectionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AiModel> aiModels,
    List<AiModel> downloadedModels,
    Map<AiModel, Stream<TaskUpdate>> downloadingTasks,
  });
}

/// @nodoc
class __$$ModelSelectionDataImplCopyWithImpl<$Res>
    extends _$ModelSelectionDataCopyWithImpl<$Res, _$ModelSelectionDataImpl>
    implements _$$ModelSelectionDataImplCopyWith<$Res> {
  __$$ModelSelectionDataImplCopyWithImpl(
    _$ModelSelectionDataImpl _value,
    $Res Function(_$ModelSelectionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModelSelectionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiModels = null,
    Object? downloadedModels = null,
    Object? downloadingTasks = null,
  }) {
    return _then(
      _$ModelSelectionDataImpl(
        aiModels: null == aiModels
            ? _value._aiModels
            : aiModels // ignore: cast_nullable_to_non_nullable
                  as List<AiModel>,
        downloadedModels: null == downloadedModels
            ? _value._downloadedModels
            : downloadedModels // ignore: cast_nullable_to_non_nullable
                  as List<AiModel>,
        downloadingTasks: null == downloadingTasks
            ? _value._downloadingTasks
            : downloadingTasks // ignore: cast_nullable_to_non_nullable
                  as Map<AiModel, Stream<TaskUpdate>>,
      ),
    );
  }
}

/// @nodoc

class _$ModelSelectionDataImpl implements _ModelSelectionData {
  _$ModelSelectionDataImpl({
    final List<AiModel> aiModels = const [],
    final List<AiModel> downloadedModels = const [],
    final Map<AiModel, Stream<TaskUpdate>> downloadingTasks = const {},
  }) : _aiModels = aiModels,
       _downloadedModels = downloadedModels,
       _downloadingTasks = downloadingTasks;

  final List<AiModel> _aiModels;
  @override
  @JsonKey()
  List<AiModel> get aiModels {
    if (_aiModels is EqualUnmodifiableListView) return _aiModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aiModels);
  }

  final List<AiModel> _downloadedModels;
  @override
  @JsonKey()
  List<AiModel> get downloadedModels {
    if (_downloadedModels is EqualUnmodifiableListView)
      return _downloadedModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadedModels);
  }

  final Map<AiModel, Stream<TaskUpdate>> _downloadingTasks;
  @override
  @JsonKey()
  Map<AiModel, Stream<TaskUpdate>> get downloadingTasks {
    if (_downloadingTasks is EqualUnmodifiableMapView) return _downloadingTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_downloadingTasks);
  }

  @override
  String toString() {
    return 'ModelSelectionData(aiModels: $aiModels, downloadedModels: $downloadedModels, downloadingTasks: $downloadingTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelSelectionDataImpl &&
            const DeepCollectionEquality().equals(other._aiModels, _aiModels) &&
            const DeepCollectionEquality().equals(
              other._downloadedModels,
              _downloadedModels,
            ) &&
            const DeepCollectionEquality().equals(
              other._downloadingTasks,
              _downloadingTasks,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_aiModels),
    const DeepCollectionEquality().hash(_downloadedModels),
    const DeepCollectionEquality().hash(_downloadingTasks),
  );

  /// Create a copy of ModelSelectionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelSelectionDataImplCopyWith<_$ModelSelectionDataImpl> get copyWith =>
      __$$ModelSelectionDataImplCopyWithImpl<_$ModelSelectionDataImpl>(
        this,
        _$identity,
      );
}

abstract class _ModelSelectionData implements ModelSelectionData {
  factory _ModelSelectionData({
    final List<AiModel> aiModels,
    final List<AiModel> downloadedModels,
    final Map<AiModel, Stream<TaskUpdate>> downloadingTasks,
  }) = _$ModelSelectionDataImpl;

  @override
  List<AiModel> get aiModels;
  @override
  List<AiModel> get downloadedModels;
  @override
  Map<AiModel, Stream<TaskUpdate>> get downloadingTasks;

  /// Create a copy of ModelSelectionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelSelectionDataImplCopyWith<_$ModelSelectionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
