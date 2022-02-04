// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'workout_plan_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutPlanViewModelTearOff {
  const _$WorkoutPlanViewModelTearOff();

  _WorkoutPlanViewModel call(
      {required String workoutName,
      required String observations,
      required Set<WeekdayViewModel> selectedWeekdays,
      required List<ExercisePlan> exercises}) {
    return _WorkoutPlanViewModel(
      workoutName: workoutName,
      observations: observations,
      selectedWeekdays: selectedWeekdays,
      exercises: exercises,
    );
  }
}

/// @nodoc
const $WorkoutPlanViewModel = _$WorkoutPlanViewModelTearOff();

/// @nodoc
mixin _$WorkoutPlanViewModel {
  String get workoutName => throw _privateConstructorUsedError;
  String get observations => throw _privateConstructorUsedError;
  Set<WeekdayViewModel> get selectedWeekdays =>
      throw _privateConstructorUsedError;
  List<ExercisePlan> get exercises => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutPlanViewModelCopyWith<WorkoutPlanViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanViewModelCopyWith<$Res> {
  factory $WorkoutPlanViewModelCopyWith(WorkoutPlanViewModel value,
          $Res Function(WorkoutPlanViewModel) then) =
      _$WorkoutPlanViewModelCopyWithImpl<$Res>;
  $Res call(
      {String workoutName,
      String observations,
      Set<WeekdayViewModel> selectedWeekdays,
      List<ExercisePlan> exercises});
}

/// @nodoc
class _$WorkoutPlanViewModelCopyWithImpl<$Res>
    implements $WorkoutPlanViewModelCopyWith<$Res> {
  _$WorkoutPlanViewModelCopyWithImpl(this._value, this._then);

  final WorkoutPlanViewModel _value;
  // ignore: unused_field
  final $Res Function(WorkoutPlanViewModel) _then;

  @override
  $Res call({
    Object? workoutName = freezed,
    Object? observations = freezed,
    Object? selectedWeekdays = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_value.copyWith(
      workoutName: workoutName == freezed
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as String,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String,
      selectedWeekdays: selectedWeekdays == freezed
          ? _value.selectedWeekdays
          : selectedWeekdays // ignore: cast_nullable_to_non_nullable
              as Set<WeekdayViewModel>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlan>,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutPlanViewModelCopyWith<$Res>
    implements $WorkoutPlanViewModelCopyWith<$Res> {
  factory _$WorkoutPlanViewModelCopyWith(_WorkoutPlanViewModel value,
          $Res Function(_WorkoutPlanViewModel) then) =
      __$WorkoutPlanViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String workoutName,
      String observations,
      Set<WeekdayViewModel> selectedWeekdays,
      List<ExercisePlan> exercises});
}

/// @nodoc
class __$WorkoutPlanViewModelCopyWithImpl<$Res>
    extends _$WorkoutPlanViewModelCopyWithImpl<$Res>
    implements _$WorkoutPlanViewModelCopyWith<$Res> {
  __$WorkoutPlanViewModelCopyWithImpl(
      _WorkoutPlanViewModel _value, $Res Function(_WorkoutPlanViewModel) _then)
      : super(_value, (v) => _then(v as _WorkoutPlanViewModel));

  @override
  _WorkoutPlanViewModel get _value => super._value as _WorkoutPlanViewModel;

  @override
  $Res call({
    Object? workoutName = freezed,
    Object? observations = freezed,
    Object? selectedWeekdays = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_WorkoutPlanViewModel(
      workoutName: workoutName == freezed
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as String,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String,
      selectedWeekdays: selectedWeekdays == freezed
          ? _value.selectedWeekdays
          : selectedWeekdays // ignore: cast_nullable_to_non_nullable
              as Set<WeekdayViewModel>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlan>,
    ));
  }
}

/// @nodoc

class _$_WorkoutPlanViewModel extends _WorkoutPlanViewModel {
  const _$_WorkoutPlanViewModel(
      {required this.workoutName,
      required this.observations,
      required this.selectedWeekdays,
      required this.exercises})
      : super._();

  @override
  final String workoutName;
  @override
  final String observations;
  @override
  final Set<WeekdayViewModel> selectedWeekdays;
  @override
  final List<ExercisePlan> exercises;

  @override
  String toString() {
    return 'WorkoutPlanViewModel(workoutName: $workoutName, observations: $observations, selectedWeekdays: $selectedWeekdays, exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutPlanViewModel &&
            (identical(other.workoutName, workoutName) ||
                const DeepCollectionEquality()
                    .equals(other.workoutName, workoutName)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)) &&
            (identical(other.selectedWeekdays, selectedWeekdays) ||
                const DeepCollectionEquality()
                    .equals(other.selectedWeekdays, selectedWeekdays)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workoutName) ^
      const DeepCollectionEquality().hash(observations) ^
      const DeepCollectionEquality().hash(selectedWeekdays) ^
      const DeepCollectionEquality().hash(exercises);

  @JsonKey(ignore: true)
  @override
  _$WorkoutPlanViewModelCopyWith<_WorkoutPlanViewModel> get copyWith =>
      __$WorkoutPlanViewModelCopyWithImpl<_WorkoutPlanViewModel>(
          this, _$identity);
}

abstract class _WorkoutPlanViewModel extends WorkoutPlanViewModel {
  const factory _WorkoutPlanViewModel(
      {required String workoutName,
      required String observations,
      required Set<WeekdayViewModel> selectedWeekdays,
      required List<ExercisePlan> exercises}) = _$_WorkoutPlanViewModel;
  const _WorkoutPlanViewModel._() : super._();

  @override
  String get workoutName => throw _privateConstructorUsedError;
  @override
  String get observations => throw _privateConstructorUsedError;
  @override
  Set<WeekdayViewModel> get selectedWeekdays =>
      throw _privateConstructorUsedError;
  @override
  List<ExercisePlan> get exercises => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutPlanViewModelCopyWith<_WorkoutPlanViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
