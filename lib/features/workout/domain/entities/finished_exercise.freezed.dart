// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'finished_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FinishedExerciseTearOff {
  const _$FinishedExerciseTearOff();

  _FinishedExercise call(
      {required String id,
      required String exerciseId,
      required List<ExerciseSet> performedSets}) {
    return _FinishedExercise(
      id: id,
      exerciseId: exerciseId,
      performedSets: performedSets,
    );
  }
}

/// @nodoc
const $FinishedExercise = _$FinishedExerciseTearOff();

/// @nodoc
mixin _$FinishedExercise {
  String get id => throw _privateConstructorUsedError;
  String get exerciseId => throw _privateConstructorUsedError;
  List<ExerciseSet> get performedSets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinishedExerciseCopyWith<FinishedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedExerciseCopyWith<$Res> {
  factory $FinishedExerciseCopyWith(
          FinishedExercise value, $Res Function(FinishedExercise) then) =
      _$FinishedExerciseCopyWithImpl<$Res>;
  $Res call({String id, String exerciseId, List<ExerciseSet> performedSets});
}

/// @nodoc
class _$FinishedExerciseCopyWithImpl<$Res>
    implements $FinishedExerciseCopyWith<$Res> {
  _$FinishedExerciseCopyWithImpl(this._value, this._then);

  final FinishedExercise _value;
  // ignore: unused_field
  final $Res Function(FinishedExercise) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? exerciseId = freezed,
    Object? performedSets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: exerciseId == freezed
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      performedSets: performedSets == freezed
          ? _value.performedSets
          : performedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
    ));
  }
}

/// @nodoc
abstract class _$FinishedExerciseCopyWith<$Res>
    implements $FinishedExerciseCopyWith<$Res> {
  factory _$FinishedExerciseCopyWith(
          _FinishedExercise value, $Res Function(_FinishedExercise) then) =
      __$FinishedExerciseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String exerciseId, List<ExerciseSet> performedSets});
}

/// @nodoc
class __$FinishedExerciseCopyWithImpl<$Res>
    extends _$FinishedExerciseCopyWithImpl<$Res>
    implements _$FinishedExerciseCopyWith<$Res> {
  __$FinishedExerciseCopyWithImpl(
      _FinishedExercise _value, $Res Function(_FinishedExercise) _then)
      : super(_value, (v) => _then(v as _FinishedExercise));

  @override
  _FinishedExercise get _value => super._value as _FinishedExercise;

  @override
  $Res call({
    Object? id = freezed,
    Object? exerciseId = freezed,
    Object? performedSets = freezed,
  }) {
    return _then(_FinishedExercise(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: exerciseId == freezed
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      performedSets: performedSets == freezed
          ? _value.performedSets
          : performedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
    ));
  }
}

/// @nodoc

class _$_FinishedExercise implements _FinishedExercise {
  const _$_FinishedExercise(
      {required this.id,
      required this.exerciseId,
      required this.performedSets});

  @override
  final String id;
  @override
  final String exerciseId;
  @override
  final List<ExerciseSet> performedSets;

  @override
  String toString() {
    return 'FinishedExercise(id: $id, exerciseId: $exerciseId, performedSets: $performedSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishedExercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)) &&
            (identical(other.performedSets, performedSets) ||
                const DeepCollectionEquality()
                    .equals(other.performedSets, performedSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseId) ^
      const DeepCollectionEquality().hash(performedSets);

  @JsonKey(ignore: true)
  @override
  _$FinishedExerciseCopyWith<_FinishedExercise> get copyWith =>
      __$FinishedExerciseCopyWithImpl<_FinishedExercise>(this, _$identity);
}

abstract class _FinishedExercise implements FinishedExercise {
  const factory _FinishedExercise(
      {required String id,
      required String exerciseId,
      required List<ExerciseSet> performedSets}) = _$_FinishedExercise;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get exerciseId => throw _privateConstructorUsedError;
  @override
  List<ExerciseSet> get performedSets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FinishedExerciseCopyWith<_FinishedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
