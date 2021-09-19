import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/shared/res/messages.dart';

part 'choose_exercises_controller.g.dart';

@lazySingleton
class ChooseExercisesController = _ChooseExercisesControllerBase with _$ChooseExercisesController;

abstract class _ChooseExercisesControllerBase with Store {
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
}
