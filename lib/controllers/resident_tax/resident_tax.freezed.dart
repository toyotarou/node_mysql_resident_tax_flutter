// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident_tax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResidentTaxState {
  List<ResidentTaxModel> get residentTaxList =>
      throw _privateConstructorUsedError;
  Map<String, ResidentTaxModel> get residentTaxMap =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResidentTaxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResidentTaxStateCopyWith<ResidentTaxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentTaxStateCopyWith<$Res> {
  factory $ResidentTaxStateCopyWith(
          ResidentTaxState value, $Res Function(ResidentTaxState) then) =
      _$ResidentTaxStateCopyWithImpl<$Res, ResidentTaxState>;
  @useResult
  $Res call(
      {List<ResidentTaxModel> residentTaxList,
      Map<String, ResidentTaxModel> residentTaxMap});
}

/// @nodoc
class _$ResidentTaxStateCopyWithImpl<$Res, $Val extends ResidentTaxState>
    implements $ResidentTaxStateCopyWith<$Res> {
  _$ResidentTaxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResidentTaxState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentTaxList = null,
    Object? residentTaxMap = null,
  }) {
    return _then(_value.copyWith(
      residentTaxList: null == residentTaxList
          ? _value.residentTaxList
          : residentTaxList // ignore: cast_nullable_to_non_nullable
              as List<ResidentTaxModel>,
      residentTaxMap: null == residentTaxMap
          ? _value.residentTaxMap
          : residentTaxMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ResidentTaxModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidentTaxStateImplCopyWith<$Res>
    implements $ResidentTaxStateCopyWith<$Res> {
  factory _$$ResidentTaxStateImplCopyWith(_$ResidentTaxStateImpl value,
          $Res Function(_$ResidentTaxStateImpl) then) =
      __$$ResidentTaxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ResidentTaxModel> residentTaxList,
      Map<String, ResidentTaxModel> residentTaxMap});
}

/// @nodoc
class __$$ResidentTaxStateImplCopyWithImpl<$Res>
    extends _$ResidentTaxStateCopyWithImpl<$Res, _$ResidentTaxStateImpl>
    implements _$$ResidentTaxStateImplCopyWith<$Res> {
  __$$ResidentTaxStateImplCopyWithImpl(_$ResidentTaxStateImpl _value,
      $Res Function(_$ResidentTaxStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResidentTaxState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentTaxList = null,
    Object? residentTaxMap = null,
  }) {
    return _then(_$ResidentTaxStateImpl(
      residentTaxList: null == residentTaxList
          ? _value._residentTaxList
          : residentTaxList // ignore: cast_nullable_to_non_nullable
              as List<ResidentTaxModel>,
      residentTaxMap: null == residentTaxMap
          ? _value._residentTaxMap
          : residentTaxMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ResidentTaxModel>,
    ));
  }
}

/// @nodoc

class _$ResidentTaxStateImpl implements _ResidentTaxState {
  const _$ResidentTaxStateImpl(
      {final List<ResidentTaxModel> residentTaxList =
          const <ResidentTaxModel>[],
      final Map<String, ResidentTaxModel> residentTaxMap = const {}})
      : _residentTaxList = residentTaxList,
        _residentTaxMap = residentTaxMap;

  final List<ResidentTaxModel> _residentTaxList;
  @override
  @JsonKey()
  List<ResidentTaxModel> get residentTaxList {
    if (_residentTaxList is EqualUnmodifiableListView) return _residentTaxList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residentTaxList);
  }

  final Map<String, ResidentTaxModel> _residentTaxMap;
  @override
  @JsonKey()
  Map<String, ResidentTaxModel> get residentTaxMap {
    if (_residentTaxMap is EqualUnmodifiableMapView) return _residentTaxMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_residentTaxMap);
  }

  @override
  String toString() {
    return 'ResidentTaxState(residentTaxList: $residentTaxList, residentTaxMap: $residentTaxMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentTaxStateImpl &&
            const DeepCollectionEquality()
                .equals(other._residentTaxList, _residentTaxList) &&
            const DeepCollectionEquality()
                .equals(other._residentTaxMap, _residentTaxMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_residentTaxList),
      const DeepCollectionEquality().hash(_residentTaxMap));

  /// Create a copy of ResidentTaxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentTaxStateImplCopyWith<_$ResidentTaxStateImpl> get copyWith =>
      __$$ResidentTaxStateImplCopyWithImpl<_$ResidentTaxStateImpl>(
          this, _$identity);
}

abstract class _ResidentTaxState implements ResidentTaxState {
  const factory _ResidentTaxState(
          {final List<ResidentTaxModel> residentTaxList,
          final Map<String, ResidentTaxModel> residentTaxMap}) =
      _$ResidentTaxStateImpl;

  @override
  List<ResidentTaxModel> get residentTaxList;
  @override
  Map<String, ResidentTaxModel> get residentTaxMap;

  /// Create a copy of ResidentTaxState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidentTaxStateImplCopyWith<_$ResidentTaxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
