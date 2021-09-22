// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WorkoutPlanController on _WorkoutPlanControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_WorkoutPlanControllerBase.isFormValid'))
          .value;

  final _$selectedWeekdaysAtom =
      Atom(name: '_WorkoutPlanControllerBase.selectedWeekdays');

  @override
  ObservableSet<WeekdayViewModel> get selectedWeekdays {
    _$selectedWeekdaysAtom.reportRead();
    return super.selectedWeekdays;
  }

  @override
  set selectedWeekdays(ObservableSet<WeekdayViewModel> value) {
    _$selectedWeekdaysAtom.reportWrite(value, super.selectedWeekdays, () {
      super.selectedWeekdays = value;
    });
  }

  final _$workoutNameAtom =
      Atom(name: '_WorkoutPlanControllerBase.workoutName');

  @override
  String get workoutName {
    _$workoutNameAtom.reportRead();
    return super.workoutName;
  }

  @override
  set workoutName(String value) {
    _$workoutNameAtom.reportWrite(value, super.workoutName, () {
      super.workoutName = value;
    });
  }

  final _$observationsAtom =
      Atom(name: '_WorkoutPlanControllerBase.observations');

  @override
  String? get observations {
    _$observationsAtom.reportRead();
    return super.observations;
  }

  @override
  set observations(String? value) {
    _$observationsAtom.reportWrite(value, super.observations, () {
      super.observations = value;
    });
  }

  final _$_WorkoutPlanControllerBaseActionController =
      ActionController(name: '_WorkoutPlanControllerBase');

  @override
  void addWeekday(WeekdayViewModel weekday) {
    final _$actionInfo = _$_WorkoutPlanControllerBaseActionController
        .startAction(name: '_WorkoutPlanControllerBase.addWeekday');
    try {
      return super.addWeekday(weekday);
    } finally {
      _$_WorkoutPlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeWeekday(WeekdayViewModel weekday) {
    final _$actionInfo = _$_WorkoutPlanControllerBaseActionController
        .startAction(name: '_WorkoutPlanControllerBase.removeWeekday');
    try {
      return super.removeWeekday(weekday);
    } finally {
      _$_WorkoutPlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeWorkoutName(String input) {
    final _$actionInfo = _$_WorkoutPlanControllerBaseActionController
        .startAction(name: '_WorkoutPlanControllerBase.changeWorkoutName');
    try {
      return super.changeWorkoutName(input);
    } finally {
      _$_WorkoutPlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObservations(String input) {
    final _$actionInfo = _$_WorkoutPlanControllerBaseActionController
        .startAction(name: '_WorkoutPlanControllerBase.changeObservations');
    try {
      return super.changeObservations(input);
    } finally {
      _$_WorkoutPlanControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedWeekdays: ${selectedWeekdays},
workoutName: ${workoutName},
observations: ${observations},
isFormValid: ${isFormValid}
    ''';
  }
}
