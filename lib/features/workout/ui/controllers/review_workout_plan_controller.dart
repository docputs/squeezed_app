import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/ui/controllers/create_workout_controller.dart';

part 'review_workout_plan_controller.g.dart';

@lazySingleton
class ReviewWorkoutPlanController = _ReviewWorkoutPlanControllerBase with _$ReviewWorkoutPlanController;

abstract class _ReviewWorkoutPlanControllerBase with Store {
  final CreateWorkoutController createWorkoutController;

  _ReviewWorkoutPlanControllerBase(this.createWorkoutController);

  Future<void> submitWorkoutPlan() {
    return createWorkoutController.save();
  }
}
