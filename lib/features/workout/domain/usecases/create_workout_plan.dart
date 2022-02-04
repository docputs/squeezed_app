import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/features/workout/domain/repositories/workout_plan_repository.dart';

class CreateWorkoutPlan {
  final WorkoutPlanRepository _repository;

  const CreateWorkoutPlan(this._repository);

  Future<void> call(WorkoutPlan workoutPlan) {
    return _repository.create(workoutPlan);
  }
}
