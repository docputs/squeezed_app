import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

part 'workout_plan_view_model.freezed.dart';

@freezed
class WorkoutPlanViewModel with _$WorkoutPlanViewModel {
  const WorkoutPlanViewModel._();

  const factory WorkoutPlanViewModel({
    required String workoutName,
    required String observations,
    required Set<WeekdayViewModel> selectedWeekdays,
    required List<ExercisePlan> exercises,
  }) = _WorkoutPlanViewModel;

  bool get isValid => workoutName.isNotEmpty;
}
