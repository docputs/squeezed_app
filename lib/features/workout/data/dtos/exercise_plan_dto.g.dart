// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExercisePlanDTO _$_$_ExercisePlanDTOFromJson(Map<String, dynamic> json) {
  return _$_ExercisePlanDTO(
    id: json['id'] as String,
    exerciseDetailsId: json['exerciseDetailsId'] as String,
    plannedSets: (json['plannedSets'] as List<dynamic>)
        .map((e) => ExerciseSetDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ExercisePlanDTOToJson(_$_ExercisePlanDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exerciseDetailsId': instance.exerciseDetailsId,
      'plannedSets': instance.plannedSets,
    };
