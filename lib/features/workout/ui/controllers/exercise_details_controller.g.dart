// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExerciseDetailsController on _ExerciseDetailsControllerBase, Store {
  final _$setsAmountAtom =
      Atom(name: '_ExerciseDetailsControllerBase.setsAmount');

  @override
  int get setsAmount {
    _$setsAmountAtom.reportRead();
    return super.setsAmount;
  }

  @override
  set setsAmount(int value) {
    _$setsAmountAtom.reportWrite(value, super.setsAmount, () {
      super.setsAmount = value;
    });
  }

  final _$totalLoadAtom =
      Atom(name: '_ExerciseDetailsControllerBase.totalLoad');

  @override
  double? get totalLoad {
    _$totalLoadAtom.reportRead();
    return super.totalLoad;
  }

  @override
  set totalLoad(double? value) {
    _$totalLoadAtom.reportWrite(value, super.totalLoad, () {
      super.totalLoad = value;
    });
  }

  final _$repsRangeAtom =
      Atom(name: '_ExerciseDetailsControllerBase.repsRange');

  @override
  RepsRange get repsRange {
    _$repsRangeAtom.reportRead();
    return super.repsRange;
  }

  @override
  set repsRange(RepsRange value) {
    _$repsRangeAtom.reportWrite(value, super.repsRange, () {
      super.repsRange = value;
    });
  }

  final _$_ExerciseDetailsControllerBaseActionController =
      ActionController(name: '_ExerciseDetailsControllerBase');

  @override
  void incrementSetsAmount() {
    final _$actionInfo =
        _$_ExerciseDetailsControllerBaseActionController.startAction(
            name: '_ExerciseDetailsControllerBase.incrementSetsAmount');
    try {
      return super.incrementSetsAmount();
    } finally {
      _$_ExerciseDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementSetsAmount() {
    final _$actionInfo =
        _$_ExerciseDetailsControllerBaseActionController.startAction(
            name: '_ExerciseDetailsControllerBase.decrementSetsAmount');
    try {
      return super.decrementSetsAmount();
    } finally {
      _$_ExerciseDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTotalLoad(String value) {
    final _$actionInfo = _$_ExerciseDetailsControllerBaseActionController
        .startAction(name: '_ExerciseDetailsControllerBase.changeTotalLoad');
    try {
      return super.changeTotalLoad(value);
    } finally {
      _$_ExerciseDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMinRepsRange(String value) {
    final _$actionInfo = _$_ExerciseDetailsControllerBaseActionController
        .startAction(name: '_ExerciseDetailsControllerBase.changeMinRepsRange');
    try {
      return super.changeMinRepsRange(value);
    } finally {
      _$_ExerciseDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMaxRepsRange(String value) {
    final _$actionInfo = _$_ExerciseDetailsControllerBaseActionController
        .startAction(name: '_ExerciseDetailsControllerBase.changeMaxRepsRange');
    try {
      return super.changeMaxRepsRange(value);
    } finally {
      _$_ExerciseDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
setsAmount: ${setsAmount},
totalLoad: ${totalLoad},
repsRange: ${repsRange}
    ''';
  }
}
