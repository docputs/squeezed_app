// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_workout_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateWorkoutViewModelTearOff {
  const _$CreateWorkoutViewModelTearOff();

  _CreateWorkoutViewModel call(
      {required Set<WeekdayViewModel> selectedWeekdays,
      required String workoutName,
      required List<ExercisePlan> exercises,
      String? observations}) {
    return _CreateWorkoutViewModel(
      selectedWeekdays: selectedWeekdays,
      workoutName: workoutName,
      exercises: exercises,
      observations: observations,
    );
  }
}

/// @nodoc
const $CreateWorkoutViewModel = _$CreateWorkoutViewModelTearOff();

/// @nodoc
mixin _$CreateWorkoutViewModel {
  Set<WeekdayViewModel> get selectedWeekdays =>
      throw _privateConstructorUsedError;
  String get workoutName => throw _privateConstructorUsedError;
  List<ExercisePlan> get exercises => throw _privateConstructorUsedError;
  String? get observations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWorkoutViewModelCopyWith<CreateWorkoutViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWorkoutViewModelCopyWith<$Res> {
  factory $CreateWorkoutViewModelCopyWith(CreateWorkoutViewModel value,
          $Res Function(CreateWorkoutViewModel) then) =
      _$CreateWorkoutViewModelCopyWithImpl<$Res>;
  $Res call(
      {Set<WeekdayViewModel> selectedWeekdays,
      String workoutName,
      List<ExercisePlan> exercises,
      String? observations});
}

/// @nodoc
class _$CreateWorkoutViewModelCopyWithImpl<$Res>
    implements $CreateWorkoutViewModelCopyWith<$Res> {
  _$CreateWorkoutViewModelCopyWithImpl(this._value, this._then);

  final CreateWorkoutViewModel _value;
  // ignore: unused_field
  final $Res Function(CreateWorkoutViewModel) _then;

  @override
  $Res call({
    Object? selectedWeekdays = freezed,
    Object? workoutName = freezed,
    Object? exercises = freezed,
    Object? observations = freezed,
  }) {
    return _then(_value.copyWith(
      selectedWeekdays: selectedWeekdays == freezed
          ? _value.selectedWeekdays
          : selectedWeekdays // ignore: cast_nullable_to_non_nullable
              as Set<WeekdayViewModel>,
      workoutName: workoutName == freezed
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlan>,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreateWorkoutViewModelCopyWith<$Res>
    implements $CreateWorkoutViewModelCopyWith<$Res> {
  factory _$CreateWorkoutViewModelCopyWith(_CreateWorkoutViewModel value,
          $Res Function(_CreateWorkoutViewModel) then) =
      __$CreateWorkoutViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<WeekdayViewModel> selectedWeekdays,
      String workoutName,
      List<ExercisePlan> exercises,
      String? observations});
}

/// @nodoc
class __$CreateWorkoutViewModelCopyWithImpl<$Res>
    extends _$CreateWorkoutViewModelCopyWithImpl<$Res>
    implements _$CreateWorkoutViewModelCopyWith<$Res> {
  __$CreateWorkoutViewModelCopyWithImpl(_CreateWorkoutViewModel _value,
      $Res Function(_CreateWorkoutViewModel) _then)
      : super(_value, (v) => _then(v as _CreateWorkoutViewModel));

  @override
  _CreateWorkoutViewModel get _value => super._value as _CreateWorkoutViewModel;

  @override
  $Res call({
    Object? selectedWeekdays = freezed,
    Object? workoutName = freezed,
    Object? exercises = freezed,
    Object? observations = freezed,
  }) {
    return _then(_CreateWorkoutViewModel(
      selectedWeekdays: selectedWeekdays == freezed
          ? _value.selectedWeekdays
          : selectedWeekdays // ignore: cast_nullable_to_non_nullable
              as Set<WeekdayViewModel>,
      workoutName: workoutName == freezed
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlan>,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateWorkoutViewModel extends _CreateWorkoutViewModel {
  _$_CreateWorkoutViewModel(
      {required this.selectedWeekdays,
      required this.workoutName,
      required this.exercises,
      this.observations})
      : super._();

  @override
  final Set<WeekdayViewModel> selectedWeekdays;
  @override
  final String workoutName;
  @override
  final List<ExercisePlan> exercises;
  @override
  final String? observations;

  @override
  String toString() {
    return 'CreateWorkoutViewModel(selectedWeekdays: $selectedWeekdays, workoutName: $workoutName, exercises: $exercises, observations: $observations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateWorkoutViewModel &&
            (identical(other.selectedWeekdays, selectedWeekdays) ||
                const DeepCollectionEquality()
                    .equals(other.selectedWeekdays, selectedWeekdays)) &&
            (identical(other.workoutName, workoutName) ||
                const DeepCollectionEquality()
                    .equals(other.workoutName, workoutName)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedWeekdays) ^
      const DeepCollectionEquality().hash(workoutName) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(observations);

  @JsonKey(ignore: true)
  @override
  _$CreateWorkoutViewModelCopyWith<_CreateWorkoutViewModel> get copyWith =>
      __$CreateWorkoutViewModelCopyWithImpl<_CreateWorkoutViewModel>(
          this, _$identity);
}

abstract class _CreateWorkoutViewModel extends CreateWorkoutViewModel {
  factory _CreateWorkoutViewModel(
      {required Set<WeekdayViewModel> selectedWeekdays,
      required String workoutName,
      required List<ExercisePlan> exercises,
      String? observations}) = _$_CreateWorkoutViewModel;
  _CreateWorkoutViewModel._() : super._();

  @override
  Set<WeekdayViewModel> get selectedWeekdays =>
      throw _privateConstructorUsedError;
  @override
  String get workoutName => throw _privateConstructorUsedError;
  @override
  List<ExercisePlan> get exercises => throw _privateConstructorUsedError;
  @override
  String? get observations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateWorkoutViewModelCopyWith<_CreateWorkoutViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
