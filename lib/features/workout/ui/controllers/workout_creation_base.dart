import 'package:squeezed_app/features/workout/ui/controllers/create_workout_controller.dart';
import 'package:squeezed_app/shared/base/base_store.dart';

abstract class WorkoutCreationBase extends BaseStore {
  CreateWorkoutController get creationController;

  void assignValuesToWorkout();
}
