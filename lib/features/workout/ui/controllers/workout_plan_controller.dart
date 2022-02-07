import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/ui/controllers/create_workout_controller.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

import './workout_creation_base.dart';

part 'workout_plan_controller.g.dart';

@lazySingleton
class WorkoutPlanController = _WorkoutPlanControllerBase with _$WorkoutPlanController;

abstract class _WorkoutPlanControllerBase extends WorkoutCreationBase with Store {
  final CreateWorkoutController creationController;
  final AppRouter appRouter;

  _WorkoutPlanControllerBase(this.creationController, this.appRouter);

  @observable
  ObservableSet<WeekdayViewModel> selectedWeekdays = ObservableSet();

  @observable
  String workoutName = '';

  @observable
  String? observations;

  @action
  void addWeekday(WeekdayViewModel weekday) => selectedWeekdays.add(weekday);

  @action
  void removeWeekday(WeekdayViewModel weekday) => selectedWeekdays.remove(weekday);

  @action
  void changeWorkoutName(String input) => workoutName = input;

  @action
  void changeObservations(String input) => observations = input;

  @computed
  bool get isFormValid => selectedWeekdays.isNotEmpty && workoutName.isNotEmpty;

  void submitForm() {
    assignValuesToWorkout();
    appRouter.push(ChooseExercisesRoute());
  }

  void assignValuesToWorkout() {
    creationController.assignWorkoutName(workoutName);
    creationController.assignWeekdays(selectedWeekdays);
    creationController.assignObservations(observations);
  }
}
