// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident_tax_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResidentTaxInputState {
  String get payDate => throw _privateConstructorUsedError;
  String get interestPayDate => throw _privateConstructorUsedError;

  /// Create a copy of ResidentTaxInputState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResidentTaxInputStateCopyWith<ResidentTaxInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentTaxInputStateCopyWith<$Res> {
  factory $ResidentTaxInputStateCopyWith(ResidentTaxInputState value,
          $Res Function(ResidentTaxInputState) then) =
      _$ResidentTaxInputStateCopyWithImpl<$Res, ResidentTaxInputState>;
  @useResult
  $Res call({String payDate, String interestPayDate});
}

/// @nodoc
class _$ResidentTaxInputStateCopyWithImpl<$Res,
        $Val extends ResidentTaxInputState>
    implements $ResidentTaxInputStateCopyWith<$Res> {
  _$ResidentTaxInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResidentTaxInputState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payDate = null,
    Object? interestPayDate = null,
  }) {
    return _then(_value.copyWith(
      payDate: null == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as String,
      interestPayDate: null == interestPayDate
          ? _value.interestPayDate
          : interestPayDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidentTaxInputStateImplCopyWith<$Res>
    implements $ResidentTaxInputStateCopyWith<$Res> {
  factory _$$ResidentTaxInputStateImplCopyWith(
          _$ResidentTaxInputStateImpl value,
          $Res Function(_$ResidentTaxInputStateImpl) then) =
      __$$ResidentTaxInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payDate, String interestPayDate});
}

/// @nodoc
class __$$ResidentTaxInputStateImplCopyWithImpl<$Res>
    extends _$ResidentTaxInputStateCopyWithImpl<$Res,
        _$ResidentTaxInputStateImpl>
    implements _$$ResidentTaxInputStateImplCopyWith<$Res> {
  __$$ResidentTaxInputStateImplCopyWithImpl(_$ResidentTaxInputStateImpl _value,
      $Res Function(_$ResidentTaxInputStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResidentTaxInputState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payDate = null,
    Object? interestPayDate = null,
  }) {
    return _then(_$ResidentTaxInputStateImpl(
      payDate: null == payDate
          ? _value.payDate
          : payDate // ignore: cast_nullable_to_non_nullable
              as String,
      interestPayDate: null == interestPayDate
          ? _value.interestPayDate
          : interestPayDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResidentTaxInputStateImpl implements _ResidentTaxInputState {
  const _$ResidentTaxInputStateImpl(
      {this.payDate = '', this.interestPayDate = ''});

  @override
  @JsonKey()
  final String payDate;
  @override
  @JsonKey()
  final String interestPayDate;

  @override
  String toString() {
    return 'ResidentTaxInputState(payDate: $payDate, interestPayDate: $interestPayDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentTaxInputStateImpl &&
            (identical(other.payDate, payDate) || other.payDate == payDate) &&
            (identical(other.interestPayDate, interestPayDate) ||
                other.interestPayDate == interestPayDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payDate, interestPayDate);

  /// Create a copy of ResidentTaxInputState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentTaxInputStateImplCopyWith<_$ResidentTaxInputStateImpl>
      get copyWith => __$$ResidentTaxInputStateImplCopyWithImpl<
          _$ResidentTaxInputStateImpl>(this, _$identity);
}

abstract class _ResidentTaxInputState implements ResidentTaxInputState {
  const factory _ResidentTaxInputState(
      {final String payDate,
      final String interestPayDate}) = _$ResidentTaxInputStateImpl;

  @override
  String get payDate;
  @override
  String get interestPayDate;

  /// Create a copy of ResidentTaxInputState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidentTaxInputStateImplCopyWith<_$ResidentTaxInputStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
