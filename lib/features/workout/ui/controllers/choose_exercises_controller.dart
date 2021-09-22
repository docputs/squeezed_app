import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/controllers/create_workout_controller.dart';
import 'package:squeezed_app/features/workout/ui/controllers/workout_creation_base.dart';
import 'package:squeezed_app/shared/res/messages.dart';

part 'choose_exercises_controller.g.dart';

@lazySingleton
class ChooseExercisesController = _ChooseExercisesControllerBase with _$ChooseExercisesController;

abstract class _ChooseExercisesControllerBase extends WorkoutCreationBase with Store {
  final CreateWorkoutController creationController;

  _ChooseExercisesControllerBase(this.creationController);

  @observable
  ObservableList<ExercisePlan> selectedExercises = ObservableList();

  @action
  void addExercise(ExercisePlan exercise) {
    selectedExercises.add(exercise);
  }

  @action
  void editExercise(ExercisePlan exercise) {
    final index = _findSelectedExerciseIndexById(exercise.id);
    selectedExercises[index] = exercise;
  }

  int _findSelectedExerciseIndexById(String id) {
    return selectedExercises.indexWhere((selectedExercise) => selectedExercise.id == id);
  }

  @action
  void removeExercise(ExercisePlan exercise) {
    selectedExercises.remove(exercise);
  }

  @computed
  String get pageTitle {
    final selectedExercisesAmount = selectedExercises.length;
    if (selectedExercisesAmount == 0) {
      return Messages.chooseExercisesNoExerciseSelected;
    } else if (selectedExercisesAmount == 1) {
      return Messages.chooseExercisesOneExerciseSelected;
    } else {
      return Messages.chooseExercisesNExercisesSelected(selectedExercisesAmount);
    }
  }

  @computed
  bool get hasSelectedExercises => selectedExercises.isNotEmpty;

  Future<void> submitExercises(BuildContext context) async {
    assignValuesToWorkout();
    AutoRouter.of(context).push(ReviewWorkoutPlanRoute(workout: creationController.workout));
  }

  @override
  void assignValuesToWorkout() {
    creationController.assignExercises(selectedExercises);
  }
}
