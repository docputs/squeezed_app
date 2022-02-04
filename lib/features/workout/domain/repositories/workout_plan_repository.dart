import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';

abstract class WorkoutPlanRepository {
  Future<void> create(WorkoutPlan workout);
}
