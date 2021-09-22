import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/view_models/create_workout_view_model.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

part 'create_workout_controller.g.dart';

@lazySingleton
class CreateWorkoutController = _CreateWorkoutControllerBase with _$CreateWorkoutController;

abstract class _CreateWorkoutControllerBase with Store {
  CreateWorkoutViewModel workout = CreateWorkoutViewModel.empty();

  void assignWorkoutName(String value) => workout = workout.copyWith(workoutName: value);

  void assignObservations(String? value) => workout = workout.copyWith(observations: value);

  void assignExercises(List<ExercisePlan> exercises) => workout = workout.copyWith(exercises: exercises);

  void assignWeekdays(Set<WeekdayViewModel> weekdays) => workout = workout.copyWith(selectedWeekdays: weekdays);
}
