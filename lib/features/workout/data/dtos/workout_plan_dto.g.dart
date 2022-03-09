// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutPlanDTO _$$_WorkoutPlanDTOFromJson(Map<String, dynamic> json) =>
    _$_WorkoutPlanDTO(
      title: json['title'] as String,
      daysOfWeek:
          (json['daysOfWeek'] as List<dynamic>).map((e) => e as int).toSet(),
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExercisePlanDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationTimestamp: DateTime.parse(json['creationTimestamp'] as String),
      observations: json['observations'] as String?,
    );

Map<String, dynamic> _$$_WorkoutPlanDTOToJson(_$_WorkoutPlanDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'daysOfWeek': instance.daysOfWeek.toList(),
      'exercises': instance.exercises,
      'creationTimestamp': instance.creationTimestamp.toIso8601String(),
      'observations': instance.observations,
    };
