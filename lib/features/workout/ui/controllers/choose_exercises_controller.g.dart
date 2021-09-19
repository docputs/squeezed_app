// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_exercises_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChooseExercisesController on _ChooseExercisesControllerBase, Store {
  Computed<String>? _$pageTitleComputed;

  @override
  String get pageTitle =>
      (_$pageTitleComputed ??= Computed<String>(() => super.pageTitle,
              name: '_ChooseExercisesControllerBase.pageTitle'))
          .value;
  Computed<bool>? _$hasSelectedExercisesComputed;

  @override
  bool get hasSelectedExercises => (_$hasSelectedExercisesComputed ??=
          Computed<bool>(() => super.hasSelectedExercises,
              name: '_ChooseExercisesControllerBase.hasSelectedExercises'))
      .value;

  final _$selectedExercisesAtom =
      Atom(name: '_ChooseExercisesControllerBase.selectedExercises');

  @override
  ObservableList<ExercisePlan> get selectedExercises {
    _$selectedExercisesAtom.reportRead();
    return super.selectedExercises;
  }

  @override
  set selectedExercises(ObservableList<ExercisePlan> value) {
    _$selectedExercisesAtom.reportWrite(value, super.selectedExercises, () {
      super.selectedExercises = value;
    });
  }

  final _$_ChooseExercisesControllerBaseActionController =
      ActionController(name: '_ChooseExercisesControllerBase');

  @override
  void addExercise(ExercisePlan exercise) {
    final _$actionInfo = _$_ChooseExercisesControllerBaseActionController
        .startAction(name: '_ChooseExercisesControllerBase.addExercise');
    try {
      return super.addExercise(exercise);
    } finally {
      _$_ChooseExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeExercise(ExercisePlan exercise) {
    final _$actionInfo = _$_ChooseExercisesControllerBaseActionController
        .startAction(name: '_ChooseExercisesControllerBase.removeExercise');
    try {
      return super.removeExercise(exercise);
    } finally {
      _$_ChooseExercisesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedExercises: ${selectedExercises},
pageTitle: ${pageTitle},
hasSelectedExercises: ${hasSelectedExercises}
    ''';
  }
}
