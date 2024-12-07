// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wareki.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WarekiState {
  List<WarekiModel> get warekiList => throw _privateConstructorUsedError;
  Map<String, WarekiModel> get warekiMap => throw _privateConstructorUsedError;

  /// Create a copy of WarekiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WarekiStateCopyWith<WarekiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarekiStateCopyWith<$Res> {
  factory $WarekiStateCopyWith(
          WarekiState value, $Res Function(WarekiState) then) =
      _$WarekiStateCopyWithImpl<$Res, WarekiState>;
  @useResult
  $Res call({List<WarekiModel> warekiList, Map<String, WarekiModel> warekiMap});
}

/// @nodoc
class _$WarekiStateCopyWithImpl<$Res, $Val extends WarekiState>
    implements $WarekiStateCopyWith<$Res> {
  _$WarekiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarekiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warekiList = null,
    Object? warekiMap = null,
  }) {
    return _then(_value.copyWith(
      warekiList: null == warekiList
          ? _value.warekiList
          : warekiList // ignore: cast_nullable_to_non_nullable
              as List<WarekiModel>,
      warekiMap: null == warekiMap
          ? _value.warekiMap
          : warekiMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WarekiModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarekiStateImplCopyWith<$Res>
    implements $WarekiStateCopyWith<$Res> {
  factory _$$WarekiStateImplCopyWith(
          _$WarekiStateImpl value, $Res Function(_$WarekiStateImpl) then) =
      __$$WarekiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WarekiModel> warekiList, Map<String, WarekiModel> warekiMap});
}

/// @nodoc
class __$$WarekiStateImplCopyWithImpl<$Res>
    extends _$WarekiStateCopyWithImpl<$Res, _$WarekiStateImpl>
    implements _$$WarekiStateImplCopyWith<$Res> {
  __$$WarekiStateImplCopyWithImpl(
      _$WarekiStateImpl _value, $Res Function(_$WarekiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarekiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warekiList = null,
    Object? warekiMap = null,
  }) {
    return _then(_$WarekiStateImpl(
      warekiList: null == warekiList
          ? _value._warekiList
          : warekiList // ignore: cast_nullable_to_non_nullable
              as List<WarekiModel>,
      warekiMap: null == warekiMap
          ? _value._warekiMap
          : warekiMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WarekiModel>,
    ));
  }
}

/// @nodoc

class _$WarekiStateImpl implements _WarekiState {
  const _$WarekiStateImpl(
      {final List<WarekiModel> warekiList = const <WarekiModel>[],
      final Map<String, WarekiModel> warekiMap = const <String, WarekiModel>{}})
      : _warekiList = warekiList,
        _warekiMap = warekiMap;

  final List<WarekiModel> _warekiList;
  @override
  @JsonKey()
  List<WarekiModel> get warekiList {
    if (_warekiList is EqualUnmodifiableListView) return _warekiList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warekiList);
  }

  final Map<String, WarekiModel> _warekiMap;
  @override
  @JsonKey()
  Map<String, WarekiModel> get warekiMap {
    if (_warekiMap is EqualUnmodifiableMapView) return _warekiMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_warekiMap);
  }

  @override
  String toString() {
    return 'WarekiState(warekiList: $warekiList, warekiMap: $warekiMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarekiStateImpl &&
            const DeepCollectionEquality()
                .equals(other._warekiList, _warekiList) &&
            const DeepCollectionEquality()
                .equals(other._warekiMap, _warekiMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_warekiList),
      const DeepCollectionEquality().hash(_warekiMap));

  /// Create a copy of WarekiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarekiStateImplCopyWith<_$WarekiStateImpl> get copyWith =>
      __$$WarekiStateImplCopyWithImpl<_$WarekiStateImpl>(this, _$identity);
}

abstract class _WarekiState implements WarekiState {
  const factory _WarekiState(
      {final List<WarekiModel> warekiList,
      final Map<String, WarekiModel> warekiMap}) = _$WarekiStateImpl;

  @override
  List<WarekiModel> get warekiList;
  @override
  Map<String, WarekiModel> get warekiMap;

  /// Create a copy of WarekiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarekiStateImplCopyWith<_$WarekiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
