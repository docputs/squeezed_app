import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';
import 'package:squeezed_app/features/workout/domain/entities/reps_range.dart';
import 'package:uuid/uuid.dart';

part 'exercise_details_controller.g.dart';

@lazySingleton
class ExerciseDetailsController = _ExerciseDetailsControllerBase with _$ExerciseDetailsController;

abstract class _ExerciseDetailsControllerBase with Store implements Disposable {
  ExerciseDetails? currentExercise;

  @observable
  int setsAmount = 3;

  @observable
  double? totalLoad;

  @observable
  RepsRange repsRange = RepsRange.zero();

  @action
  void incrementSetsAmount() => setsAmount++;

  @action
  void decrementSetsAmount() => setsAmount--;

  @action
  void changeTotalLoad(String value) {
    final correctedValue = _replaceCommasWithDots(value);
    totalLoad = double.tryParse(correctedValue);
  }

  @action
  void changeMinRepsRange(String value) {
    final parsedValue = int.tryParse(value);
    if (parsedValue != null) repsRange = repsRange.copyWith(min: parsedValue);
  }

  @action
  void changeMaxRepsRange(String value) {
    final parsedValue = int.tryParse(value);
    if (parsedValue != null) repsRange = repsRange.copyWith(max: parsedValue);
  }

  String _replaceCommasWithDots(String value) => value.replaceAll(',', '.');

  void addExerciseToList(BuildContext context) {
    final exercisePlan = _createExercisePlan();
    AutoRouter.of(context).pop<ExercisePlan>(exercisePlan);
  }

  ExercisePlan _createExercisePlan() {
    return ExercisePlan(
      id: const Uuid().v1(),
      exercise: currentExercise!,
      plannedSets: _generatePlannedSets(),
    );
  }

  List<ExerciseSet> _generatePlannedSets() {
    return List.generate(
      setsAmount,
      (index) => ExerciseSet(
        load: totalLoad,
        reps: repsRange.isEmpty ? null : repsRange,
      ),
    );
  }

  @override
  void onDispose() {
    _resetDefaultValues();
  }

  void _resetDefaultValues() {
    setsAmount = 3;
    totalLoad = null;
    repsRange = RepsRange.zero();
  }
}
