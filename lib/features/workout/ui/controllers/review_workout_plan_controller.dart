import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'review_workout_plan_controller.g.dart';

@lazySingleton
class ReviewWorkoutPlanController = _ReviewWorkoutPlanControllerBase with _$ReviewWorkoutPlanController;

abstract class _ReviewWorkoutPlanControllerBase with Store {
  Future<void> submitWorkoutPlan() async {

  }  
}
