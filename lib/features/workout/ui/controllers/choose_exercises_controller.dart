import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';

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
  void removeExercise(ExercisePlan exercise) {
    selectedExercises.remove(exercise);
  }

  @computed
  String get pageTitle {
    final selectedExercisesAmount = selectedExercises.length;
    if (selectedExercisesAmount == 0) {
      return 'Nenhum exercício selecionado';
    } else if (selectedExercisesAmount == 1) {
      return '1 exercício selecionado';
    } else {
      return '$selectedExercisesAmount exercicios selecionados';
    }
  }
}
