// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_exercise_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchExerciseController on _SearchExerciseControllerBase, Store {
  Computed<List<ExerciseDetails>>? _$matchedExercisesComputed;

  @override
  List<ExerciseDetails> get matchedExercises => (_$matchedExercisesComputed ??=
          Computed<List<ExerciseDetails>>(() => super.matchedExercises,
              name: '_SearchExerciseControllerBase.matchedExercises'))
      .value;

  final _$searchTermAtom =
      Atom(name: '_SearchExerciseControllerBase.searchTerm');

  @override
  String get searchTerm {
    _$searchTermAtom.reportRead();
    return super.searchTerm;
  }

  @override
  set searchTerm(String value) {
    _$searchTermAtom.reportWrite(value, super.searchTerm, () {
      super.searchTerm = value;
    });
  }

  final _$selectedMusclesAtom =
      Atom(name: '_SearchExerciseControllerBase.selectedMuscles');

  @override
  ObservableSet<String> get selectedMuscles {
    _$selectedMusclesAtom.reportRead();
    return super.selectedMuscles;
  }

  @override
  set selectedMuscles(ObservableSet<String> value) {
    _$selectedMusclesAtom.reportWrite(value, super.selectedMuscles, () {
      super.selectedMuscles = value;
    });
  }

  final _$_SearchExerciseControllerBaseActionController =
      ActionController(name: '_SearchExerciseControllerBase');

  @override
  void searchExercise(String input) {
    final _$actionInfo = _$_SearchExerciseControllerBaseActionController
        .startAction(name: '_SearchExerciseControllerBase.searchExercise');
    try {
      return super.searchExercise(input);
    } finally {
      _$_SearchExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectMuscle(String muscle) {
    final _$actionInfo = _$_SearchExerciseControllerBaseActionController
        .startAction(name: '_SearchExerciseControllerBase.selectMuscle');
    try {
      return super.selectMuscle(muscle);
    } finally {
      _$_SearchExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unselectMuscle(String muscle) {
    final _$actionInfo = _$_SearchExerciseControllerBaseActionController
        .startAction(name: '_SearchExerciseControllerBase.unselectMuscle');
    try {
      return super.unselectMuscle(muscle);
    } finally {
      _$_SearchExerciseControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchTerm: ${searchTerm},
selectedMuscles: ${selectedMuscles},
matchedExercises: ${matchedExercises}
    ''';
  }
}
