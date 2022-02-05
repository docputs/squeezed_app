import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise_plan_dto.dart';

part 'workout_plan_dto.freezed.dart';
part 'workout_plan_dto.g.dart';

@freezed
class WorkoutPlanDTO with _$WorkoutPlanDTO {
  const factory WorkoutPlanDTO({
    String? id,
    required String title,
    required Set<int> daysOfWeek,
    required List<ExercisePlanDTO> exercises,
    required DateTime creationTimestamp,
    required String? observations,
  }) = _WorkoutPlanDTO;

  factory WorkoutPlanDTO.fromJson(Map<String, dynamic> json) => _$WorkoutPlanDTOFromJson(json);
}
