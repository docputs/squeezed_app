// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reps_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepsRangeTearOff {
  const _$RepsRangeTearOff();

  _RepsRange call(int min, int max) {
    return _RepsRange(
      min,
      max,
    );
  }
}

/// @nodoc
const $RepsRange = _$RepsRangeTearOff();

/// @nodoc
mixin _$RepsRange {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepsRangeCopyWith<RepsRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepsRangeCopyWith<$Res> {
  factory $RepsRangeCopyWith(RepsRange value, $Res Function(RepsRange) then) =
      _$RepsRangeCopyWithImpl<$Res>;
  $Res call({int min, int max});
}

/// @nodoc
class _$RepsRangeCopyWithImpl<$Res> implements $RepsRangeCopyWith<$Res> {
  _$RepsRangeCopyWithImpl(this._value, this._then);

  final RepsRange _value;
  // ignore: unused_field
  final $Res Function(RepsRange) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RepsRangeCopyWith<$Res> implements $RepsRangeCopyWith<$Res> {
  factory _$RepsRangeCopyWith(
          _RepsRange value, $Res Function(_RepsRange) then) =
      __$RepsRangeCopyWithImpl<$Res>;
  @override
  $Res call({int min, int max});
}

/// @nodoc
class __$RepsRangeCopyWithImpl<$Res> extends _$RepsRangeCopyWithImpl<$Res>
    implements _$RepsRangeCopyWith<$Res> {
  __$RepsRangeCopyWithImpl(_RepsRange _value, $Res Function(_RepsRange) _then)
      : super(_value, (v) => _then(v as _RepsRange));

  @override
  _RepsRange get _value => super._value as _RepsRange;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_RepsRange(
      min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RepsRange implements _RepsRange {
  const _$_RepsRange(this.min, this.max);

  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'RepsRange(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepsRange &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  _$RepsRangeCopyWith<_RepsRange> get copyWith =>
      __$RepsRangeCopyWithImpl<_RepsRange>(this, _$identity);
}

abstract class _RepsRange implements RepsRange {
  const factory _RepsRange(int min, int max) = _$_RepsRange;

  @override
  int get min => throw _privateConstructorUsedError;
  @override
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepsRangeCopyWith<_RepsRange> get copyWith =>
      throw _privateConstructorUsedError;
}
