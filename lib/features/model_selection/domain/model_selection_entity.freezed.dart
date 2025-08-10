// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_selection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ModelSelectionEntity {
  List<AiModel> get aiModels => throw _privateConstructorUsedError;

  /// Create a copy of ModelSelectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelSelectionEntityCopyWith<ModelSelectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelSelectionEntityCopyWith<$Res> {
  factory $ModelSelectionEntityCopyWith(
    ModelSelectionEntity value,
    $Res Function(ModelSelectionEntity) then,
  ) = _$ModelSelectionEntityCopyWithImpl<$Res, ModelSelectionEntity>;
  @useResult
  $Res call({List<AiModel> aiModels});
}

/// @nodoc
class _$ModelSelectionEntityCopyWithImpl<
  $Res,
  $Val extends ModelSelectionEntity
>
    implements $ModelSelectionEntityCopyWith<$Res> {
  _$ModelSelectionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelSelectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? aiModels = null}) {
    return _then(
      _value.copyWith(
            aiModels: null == aiModels
                ? _value.aiModels
                : aiModels // ignore: cast_nullable_to_non_nullable
                      as List<AiModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModelSelectionEntityImplCopyWith<$Res>
    implements $ModelSelectionEntityCopyWith<$Res> {
  factory _$$ModelSelectionEntityImplCopyWith(
    _$ModelSelectionEntityImpl value,
    $Res Function(_$ModelSelectionEntityImpl) then,
  ) = __$$ModelSelectionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AiModel> aiModels});
}

/// @nodoc
class __$$ModelSelectionEntityImplCopyWithImpl<$Res>
    extends _$ModelSelectionEntityCopyWithImpl<$Res, _$ModelSelectionEntityImpl>
    implements _$$ModelSelectionEntityImplCopyWith<$Res> {
  __$$ModelSelectionEntityImplCopyWithImpl(
    _$ModelSelectionEntityImpl _value,
    $Res Function(_$ModelSelectionEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModelSelectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? aiModels = null}) {
    return _then(
      _$ModelSelectionEntityImpl(
        aiModels: null == aiModels
            ? _value._aiModels
            : aiModels // ignore: cast_nullable_to_non_nullable
                  as List<AiModel>,
      ),
    );
  }
}

/// @nodoc

class _$ModelSelectionEntityImpl implements _ModelSelectionEntity {
  _$ModelSelectionEntityImpl({required final List<AiModel> aiModels})
    : _aiModels = aiModels;

  final List<AiModel> _aiModels;
  @override
  List<AiModel> get aiModels {
    if (_aiModels is EqualUnmodifiableListView) return _aiModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aiModels);
  }

  @override
  String toString() {
    return 'ModelSelectionEntity(aiModels: $aiModels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelSelectionEntityImpl &&
            const DeepCollectionEquality().equals(other._aiModels, _aiModels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_aiModels));

  /// Create a copy of ModelSelectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelSelectionEntityImplCopyWith<_$ModelSelectionEntityImpl>
  get copyWith =>
      __$$ModelSelectionEntityImplCopyWithImpl<_$ModelSelectionEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _ModelSelectionEntity implements ModelSelectionEntity {
  factory _ModelSelectionEntity({required final List<AiModel> aiModels}) =
      _$ModelSelectionEntityImpl;

  @override
  List<AiModel> get aiModels;

  /// Create a copy of ModelSelectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelSelectionEntityImplCopyWith<_$ModelSelectionEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
