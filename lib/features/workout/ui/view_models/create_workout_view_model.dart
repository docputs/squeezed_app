import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

part 'create_workout_view_model.freezed.dart';

@freezed
class CreateWorkoutViewModel with _$CreateWorkoutViewModel {
  const CreateWorkoutViewModel._();

  factory CreateWorkoutViewModel({
    required Set<WeekdayViewModel> selectedWeekdays,
    required String workoutName,
    required List<ExercisePlan> exercises,
    String? observations,
  }) = _CreateWorkoutViewModel;

  factory CreateWorkoutViewModel.empty() {
    return CreateWorkoutViewModel(
      selectedWeekdays: {},
      workoutName: '',
      exercises: [],
    );
  }

  bool isValid() {
    return workoutName.isNotEmpty && selectedWeekdays.isNotEmpty && exercises.isNotEmpty;
  }
}
