import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/ui/view_models/create_workout_view_model.dart';
import 'package:squeezed_app/shared/base/base_store.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

part 'create_workout_controller.g.dart';

@lazySingleton
class CreateWorkoutController = _CreateWorkoutControllerBase with _$CreateWorkoutController;

abstract class _CreateWorkoutControllerBase extends BaseStore with Store {
  @observable
  CreateWorkoutViewModel workoutViewModel = CreateWorkoutViewModel.empty();

  @observable
  ObservableSet<WeekdayViewModel> selectedWeekdays = ObservableSet();

  @action
  void addWeekday(WeekdayViewModel weekday) => selectedWeekdays.add(weekday);

  @action
  void removeWeekday(WeekdayViewModel weekday) => selectedWeekdays.remove(weekday);

  @action
  void changeWorkoutName(String input) => workoutViewModel = workoutViewModel.copyWith(workoutName: input);

  @action
  void changeObservations(String input) => workoutViewModel = workoutViewModel.copyWith(observations: input);

  @computed
  bool get isFormValid {
    return selectedWeekdays.isNotEmpty && workoutViewModel.isValid();
  }
}
