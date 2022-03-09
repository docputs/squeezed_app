// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseSetTearOff {
  const _$ExerciseSetTearOff();

  _ExerciseSet call({double? load, RepsRange? reps, int? rpe}) {
    return _ExerciseSet(
      load: load,
      reps: reps,
      rpe: rpe,
    );
  }
}

/// @nodoc
const $ExerciseSet = _$ExerciseSetTearOff();

/// @nodoc
mixin _$ExerciseSet {
  double? get load => throw _privateConstructorUsedError;
  RepsRange? get reps => throw _privateConstructorUsedError;
  int? get rpe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseSetCopyWith<ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetCopyWith<$Res> {
  factory $ExerciseSetCopyWith(
          ExerciseSet value, $Res Function(ExerciseSet) then) =
      _$ExerciseSetCopyWithImpl<$Res>;
  $Res call({double? load, RepsRange? reps, int? rpe});

  $RepsRangeCopyWith<$Res>? get reps;
}

/// @nodoc
class _$ExerciseSetCopyWithImpl<$Res> implements $ExerciseSetCopyWith<$Res> {
  _$ExerciseSetCopyWithImpl(this._value, this._then);

  final ExerciseSet _value;
  // ignore: unused_field
  final $Res Function(ExerciseSet) _then;

  @override
  $Res call({
    Object? load = freezed,
    Object? reps = freezed,
    Object? rpe = freezed,
  }) {
    return _then(_value.copyWith(
      load: load == freezed
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as double?,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsRange?,
      rpe: rpe == freezed
          ? _value.rpe
          : rpe // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $RepsRangeCopyWith<$Res>? get reps {
    if (_value.reps == null) {
      return null;
    }

    return $RepsRangeCopyWith<$Res>(_value.reps!, (value) {
      return _then(_value.copyWith(reps: value));
    });
  }
}

/// @nodoc
abstract class _$ExerciseSetCopyWith<$Res>
    implements $ExerciseSetCopyWith<$Res> {
  factory _$ExerciseSetCopyWith(
          _ExerciseSet value, $Res Function(_ExerciseSet) then) =
      __$ExerciseSetCopyWithImpl<$Res>;
  @override
  $Res call({double? load, RepsRange? reps, int? rpe});

  @override
  $RepsRangeCopyWith<$Res>? get reps;
}

/// @nodoc
class __$ExerciseSetCopyWithImpl<$Res> extends _$ExerciseSetCopyWithImpl<$Res>
    implements _$ExerciseSetCopyWith<$Res> {
  __$ExerciseSetCopyWithImpl(
      _ExerciseSet _value, $Res Function(_ExerciseSet) _then)
      : super(_value, (v) => _then(v as _ExerciseSet));

  @override
  _ExerciseSet get _value => super._value as _ExerciseSet;

  @override
  $Res call({
    Object? load = freezed,
    Object? reps = freezed,
    Object? rpe = freezed,
  }) {
    return _then(_ExerciseSet(
      load: load == freezed
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as double?,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsRange?,
      rpe: rpe == freezed
          ? _value.rpe
          : rpe // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ExerciseSet extends _ExerciseSet {
  const _$_ExerciseSet({this.load, this.reps, this.rpe}) : super._();

  @override
  final double? load;
  @override
  final RepsRange? reps;
  @override
  final int? rpe;

  @override
  String toString() {
    return 'ExerciseSet(load: $load, reps: $reps, rpe: $rpe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseSet &&
            (identical(other.load, load) ||
                const DeepCollectionEquality().equals(other.load, load)) &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)) &&
            (identical(other.rpe, rpe) ||
                const DeepCollectionEquality().equals(other.rpe, rpe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(load) ^
      const DeepCollectionEquality().hash(reps) ^
      const DeepCollectionEquality().hash(rpe);

  @JsonKey(ignore: true)
  @override
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      __$ExerciseSetCopyWithImpl<_ExerciseSet>(this, _$identity);
}

abstract class _ExerciseSet extends ExerciseSet {
  const factory _ExerciseSet({double? load, RepsRange? reps, int? rpe}) =
      _$_ExerciseSet;
  const _ExerciseSet._() : super._();

  @override
  double? get load => throw _privateConstructorUsedError;
  @override
  RepsRange? get reps => throw _privateConstructorUsedError;
  @override
  int? get rpe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      throw _privateConstructorUsedError;
}
