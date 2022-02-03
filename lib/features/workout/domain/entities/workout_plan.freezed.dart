// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'workout_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutPlanTearOff {
  const _$WorkoutPlanTearOff();

  _WorkoutPlan call(
      {String? id,
      required String title,
      required Set<int> daysOfWeek,
      required List<ExercisePlan> exercises,
      required DateTime creationTimestamp,
      required String? observations}) {
    return _WorkoutPlan(
      id: id,
      title: title,
      daysOfWeek: daysOfWeek,
      exercises: exercises,
      creationTimestamp: creationTimestamp,
      observations: observations,
    );
  }
}

/// @nodoc
const $WorkoutPlan = _$WorkoutPlanTearOff();

/// @nodoc
mixin _$WorkoutPlan {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Set<int> get daysOfWeek => throw _privateConstructorUsedError;
  List<ExercisePlan> get exercises => throw _privateConstructorUsedError;
  DateTime get creationTimestamp => throw _privateConstructorUsedError;
  String? get observations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutPlanCopyWith<WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanCopyWith<$Res> {
  factory $WorkoutPlanCopyWith(
          WorkoutPlan value, $Res Function(WorkoutPlan) then) =
      _$WorkoutPlanCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String title,
      Set<int> daysOfWeek,
      List<ExercisePlan> exercises,
      DateTime creationTimestamp,
      String? observations});
}

/// @nodoc
class _$WorkoutPlanCopyWithImpl<$Res> implements $WorkoutPlanCopyWith<$Res> {
  _$WorkoutPlanCopyWithImpl(this._value, this._then);

  final WorkoutPlan _value;
  // ignore: unused_field
  final $Res Function(WorkoutPlan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? daysOfWeek = freezed,
    Object? exercises = freezed,
    Object? creationTimestamp = freezed,
    Object? observations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      daysOfWeek: daysOfWeek == freezed
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlan>,
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutPlanCopyWith<$Res>
    implements $WorkoutPlanCopyWith<$Res> {
  factory _$WorkoutPlanCopyWith(
          _WorkoutPlan value, $Res Function(_WorkoutPlan) then) =
      __$WorkoutPlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String title,
      Set<int> daysOfWeek,
      List<ExercisePlan> exercises,
      DateTime creationTimestamp,
      String? observations});
}

/// @nodoc
class __$WorkoutPlanCopyWithImpl<$Res> extends _$WorkoutPlanCopyWithImpl<$Res>
    implements _$WorkoutPlanCopyWith<$Res> {
  __$WorkoutPlanCopyWithImpl(
      _WorkoutPlan _value, $Res Function(_WorkoutPlan) _then)
      : super(_value, (v) => _then(v as _WorkoutPlan));

  @override
  _WorkoutPlan get _value => super._value as _WorkoutPlan;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? daysOfWeek = freezed,
    Object? exercises = freezed,
    Object? creationTimestamp = freezed,
    Object? observations = freezed,
  }) {
    return _then(_WorkoutPlan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      daysOfWeek: daysOfWeek == freezed
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlan>,
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WorkoutPlan extends _WorkoutPlan {
  _$_WorkoutPlan(
      {this.id,
      required this.title,
      required this.daysOfWeek,
      required this.exercises,
      required this.creationTimestamp,
      required this.observations})
      : super._();

  @override
  final String? id;
  @override
  final String title;
  @override
  final Set<int> daysOfWeek;
  @override
  final List<ExercisePlan> exercises;
  @override
  final DateTime creationTimestamp;
  @override
  final String? observations;

  @override
  String toString() {
    return 'WorkoutPlan(id: $id, title: $title, daysOfWeek: $daysOfWeek, exercises: $exercises, creationTimestamp: $creationTimestamp, observations: $observations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutPlan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.daysOfWeek, daysOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfWeek, daysOfWeek)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.creationTimestamp, creationTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.creationTimestamp, creationTimestamp)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(daysOfWeek) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(creationTimestamp) ^
      const DeepCollectionEquality().hash(observations);

  @JsonKey(ignore: true)
  @override
  _$WorkoutPlanCopyWith<_WorkoutPlan> get copyWith =>
      __$WorkoutPlanCopyWithImpl<_WorkoutPlan>(this, _$identity);
}

abstract class _WorkoutPlan extends WorkoutPlan {
  factory _WorkoutPlan(
      {String? id,
      required String title,
      required Set<int> daysOfWeek,
      required List<ExercisePlan> exercises,
      required DateTime creationTimestamp,
      required String? observations}) = _$_WorkoutPlan;
  _WorkoutPlan._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Set<int> get daysOfWeek => throw _privateConstructorUsedError;
  @override
  List<ExercisePlan> get exercises => throw _privateConstructorUsedError;
  @override
  DateTime get creationTimestamp => throw _privateConstructorUsedError;
  @override
  String? get observations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutPlanCopyWith<_WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
