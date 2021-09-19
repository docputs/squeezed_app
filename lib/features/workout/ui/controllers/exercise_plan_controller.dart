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

part 'exercise_plan_controller.g.dart';

@injectable
class ExercisePlanController = _ExercisePlanControllerBase with _$ExercisePlanController;

abstract class _ExercisePlanControllerBase with Store implements Disposable {
  final minRepsTextController = TextEditingController();
  final maxRepsTextController = TextEditingController();

  late ExerciseDetails exerciseDetails;
  ExercisePlan? exercisePlan;

  @observable
  int setsAmount = 3;

  @observable
  double? totalLoad;

  @observable
  RepsRange repsRange = RepsRange.zero();

  void initializeExerciseDetails(ExerciseDetails newExerciseDetails) {
    exerciseDetails = newExerciseDetails;
  }

  void initializeEditableExercisePlan(ExercisePlan newExercisePlan) {
    exercisePlan = newExercisePlan;
    exerciseDetails = newExercisePlan.exercise;
    initializeFieldsWithExercisePlan(newExercisePlan);
  }

  void initializeFieldsWithExercisePlan(ExercisePlan exercisePlan) {
    setsAmount = exercisePlan.setsAmount;
    totalLoad = exercisePlan.plannedSets.first.load;
    if (exercisePlan.plannedSets.first.reps != null) {
      repsRange = exercisePlan.plannedSets.first.reps!;
      _initializeTextEditingControllers();
    }
  }

  void _initializeTextEditingControllers() {
    minRepsTextController.text = exercisePlan!.plannedSets.first.reps!.min.toString();
    maxRepsTextController.text = exercisePlan!.plannedSets.first.reps!.max.toString();
  }

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

  void updateExerciseInList(BuildContext context) {
    final newExercisePlan = exercisePlan!.copyWith(
      plannedSets: _generatePlannedSets(),
    );
    AutoRouter.of(context).pop<ExercisePlan>(newExercisePlan);
  }

  void addExerciseToList(BuildContext context) {
    final newExercisePlan = _createExercisePlan();
    AutoRouter.of(context).pop<ExercisePlan>(newExercisePlan);
  }

  ExercisePlan _createExercisePlan() {
    return ExercisePlan(
      id: const Uuid().v1(),
      exercise: exerciseDetails,
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
    _disposeTextEditingControllers();
  }

  void _resetDefaultValues() {
    setsAmount = 3;
    totalLoad = null;
    repsRange = RepsRange.zero();
    exercisePlan = null;
  }

  void _disposeTextEditingControllers() {
    minRepsTextController.dispose();
    maxRepsTextController.dispose();
  }
}
