// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateWorkoutController on _CreateWorkoutControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateWorkoutControllerBase.isFormValid'))
          .value;

  final _$workoutViewModelAtom =
      Atom(name: '_CreateWorkoutControllerBase.workoutViewModel');

  @override
  CreateWorkoutViewModel get workoutViewModel {
    _$workoutViewModelAtom.reportRead();
    return super.workoutViewModel;
  }

  @override
  set workoutViewModel(CreateWorkoutViewModel value) {
    _$workoutViewModelAtom.reportWrite(value, super.workoutViewModel, () {
      super.workoutViewModel = value;
    });
  }

  final _$selectedWeekdaysAtom =
      Atom(name: '_CreateWorkoutControllerBase.selectedWeekdays');

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

  final _$_CreateWorkoutControllerBaseActionController =
      ActionController(name: '_CreateWorkoutControllerBase');

  @override
  void addWeekday(WeekdayViewModel weekday) {
    final _$actionInfo = _$_CreateWorkoutControllerBaseActionController
        .startAction(name: '_CreateWorkoutControllerBase.addWeekday');
    try {
      return super.addWeekday(weekday);
    } finally {
      _$_CreateWorkoutControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeWeekday(WeekdayViewModel weekday) {
    final _$actionInfo = _$_CreateWorkoutControllerBaseActionController
        .startAction(name: '_CreateWorkoutControllerBase.removeWeekday');
    try {
      return super.removeWeekday(weekday);
    } finally {
      _$_CreateWorkoutControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeWorkoutName(String input) {
    final _$actionInfo = _$_CreateWorkoutControllerBaseActionController
        .startAction(name: '_CreateWorkoutControllerBase.changeWorkoutName');
    try {
      return super.changeWorkoutName(input);
    } finally {
      _$_CreateWorkoutControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workoutViewModel: ${workoutViewModel},
selectedWeekdays: ${selectedWeekdays},
isFormValid: ${isFormValid}
    ''';
  }
}
