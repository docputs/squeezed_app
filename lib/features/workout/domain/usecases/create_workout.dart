import 'package:clock/clock.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/features/workout/domain/repositories/workout_plan_repository.dart';
import 'package:squeezed_app/features/workout/ui/view_models/workout_plan_view_model.dart';

class CreateWorkout {
  final WorkoutPlanRepository _repository;

  const CreateWorkout(this._repository);

  Future<void> call(WorkoutPlanViewModel viewModel) {
    final workoutPlan = WorkoutPlan(
      title: viewModel.workoutName,
      daysOfWeek: viewModel.selectedWeekdays.map((e) => e.weekdayNumber).toSet(),
      exercises: viewModel.exercises,
      creationTimestamp: clock.now(),
      observations: viewModel.observations.isNotEmpty ? viewModel.observations : null,
    );
    return _repository.create(workoutPlan);
  }
}
