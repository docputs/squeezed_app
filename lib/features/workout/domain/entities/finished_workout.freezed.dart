// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'finished_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FinishedWorkoutTearOff {
  const _$FinishedWorkoutTearOff();

  _FinishedWorkout call(
      {required String id,
      required String workoutId,
      required List<FinishedExercise> exercises,
      required DateTime finishedTimestamp}) {
    return _FinishedWorkout(
      id: id,
      workoutId: workoutId,
      exercises: exercises,
      finishedTimestamp: finishedTimestamp,
    );
  }
}

/// @nodoc
const $FinishedWorkout = _$FinishedWorkoutTearOff();

/// @nodoc
mixin _$FinishedWorkout {
  String get id => throw _privateConstructorUsedError;
  String get workoutId => throw _privateConstructorUsedError;
  List<FinishedExercise> get exercises => throw _privateConstructorUsedError;
  DateTime get finishedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinishedWorkoutCopyWith<FinishedWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedWorkoutCopyWith<$Res> {
  factory $FinishedWorkoutCopyWith(
          FinishedWorkout value, $Res Function(FinishedWorkout) then) =
      _$FinishedWorkoutCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String workoutId,
      List<FinishedExercise> exercises,
      DateTime finishedTimestamp});
}

/// @nodoc
class _$FinishedWorkoutCopyWithImpl<$Res>
    implements $FinishedWorkoutCopyWith<$Res> {
  _$FinishedWorkoutCopyWithImpl(this._value, this._then);

  final FinishedWorkout _value;
  // ignore: unused_field
  final $Res Function(FinishedWorkout) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? workoutId = freezed,
    Object? exercises = freezed,
    Object? finishedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<FinishedExercise>,
      finishedTimestamp: finishedTimestamp == freezed
          ? _value.finishedTimestamp
          : finishedTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FinishedWorkoutCopyWith<$Res>
    implements $FinishedWorkoutCopyWith<$Res> {
  factory _$FinishedWorkoutCopyWith(
          _FinishedWorkout value, $Res Function(_FinishedWorkout) then) =
      __$FinishedWorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String workoutId,
      List<FinishedExercise> exercises,
      DateTime finishedTimestamp});
}

/// @nodoc
class __$FinishedWorkoutCopyWithImpl<$Res>
    extends _$FinishedWorkoutCopyWithImpl<$Res>
    implements _$FinishedWorkoutCopyWith<$Res> {
  __$FinishedWorkoutCopyWithImpl(
      _FinishedWorkout _value, $Res Function(_FinishedWorkout) _then)
      : super(_value, (v) => _then(v as _FinishedWorkout));

  @override
  _FinishedWorkout get _value => super._value as _FinishedWorkout;

  @override
  $Res call({
    Object? id = freezed,
    Object? workoutId = freezed,
    Object? exercises = freezed,
    Object? finishedTimestamp = freezed,
  }) {
    return _then(_FinishedWorkout(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<FinishedExercise>,
      finishedTimestamp: finishedTimestamp == freezed
          ? _value.finishedTimestamp
          : finishedTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_FinishedWorkout implements _FinishedWorkout {
  const _$_FinishedWorkout(
      {required this.id,
      required this.workoutId,
      required this.exercises,
      required this.finishedTimestamp});

  @override
  final String id;
  @override
  final String workoutId;
  @override
  final List<FinishedExercise> exercises;
  @override
  final DateTime finishedTimestamp;

  @override
  String toString() {
    return 'FinishedWorkout(id: $id, workoutId: $workoutId, exercises: $exercises, finishedTimestamp: $finishedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishedWorkout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.workoutId, workoutId) ||
                const DeepCollectionEquality()
                    .equals(other.workoutId, workoutId)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.finishedTimestamp, finishedTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.finishedTimestamp, finishedTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(workoutId) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(finishedTimestamp);

  @JsonKey(ignore: true)
  @override
  _$FinishedWorkoutCopyWith<_FinishedWorkout> get copyWith =>
      __$FinishedWorkoutCopyWithImpl<_FinishedWorkout>(this, _$identity);
}

abstract class _FinishedWorkout implements FinishedWorkout {
  const factory _FinishedWorkout(
      {required String id,
      required String workoutId,
      required List<FinishedExercise> exercises,
      required DateTime finishedTimestamp}) = _$_FinishedWorkout;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get workoutId => throw _privateConstructorUsedError;
  @override
  List<FinishedExercise> get exercises => throw _privateConstructorUsedError;
  @override
  DateTime get finishedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FinishedWorkoutCopyWith<_FinishedWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}
