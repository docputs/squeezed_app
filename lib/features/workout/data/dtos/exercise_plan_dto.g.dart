// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExercisePlanDTO _$$_ExercisePlanDTOFromJson(Map<String, dynamic> json) =>
    _$_ExercisePlanDTO(
      id: json['id'] as String,
      details:
          ExerciseDetailsDTO.fromJson(json['details'] as Map<String, dynamic>),
      plannedSets: (json['plannedSets'] as List<dynamic>)
          .map((e) => ExerciseSetDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExercisePlanDTOToJson(_$_ExercisePlanDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'plannedSets': instance.plannedSets,
    };
