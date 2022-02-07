import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';

import 'exercise_plan_dto.dart';

part 'workout_plan_dto.freezed.dart';
part 'workout_plan_dto.g.dart';

@freezed
class WorkoutPlanDTO with _$WorkoutPlanDTO {
  const factory WorkoutPlanDTO({
    @JsonKey(ignore: true) String? id,
    required String title,
    required Set<int> daysOfWeek,
    required List<ExercisePlanDTO> exercises,
    required DateTime creationTimestamp,
    required String? observations,
  }) = _WorkoutPlanDTO;

  factory WorkoutPlanDTO.fromJson(Map<String, dynamic> json) => _$WorkoutPlanDTOFromJson(json);

  factory WorkoutPlanDTO.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      WorkoutPlanDTO.fromJson(snapshot.data()!).copyWith(id: snapshot.id);

  factory WorkoutPlanDTO.fromDomain(WorkoutPlan model) {
    return WorkoutPlanDTO(
      id: model.id,
      title: model.title,
      daysOfWeek: model.daysOfWeek,
      exercises: model.exercises.map((e) => ExercisePlanDTO.fromDomain(e)).toList(),
      creationTimestamp: model.creationTimestamp,
      observations: model.observations,
    );
  }

  WorkoutPlan toDomain() {
    return WorkoutPlan(
      id: id,
      title: title,
      daysOfWeek: daysOfWeek,
      exercises: exercises.map((e) => e.toDomain()).toList(),
      creationTimestamp: creationTimestamp,
      observations: observations,
    );
  }
}
