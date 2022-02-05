// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_set_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseSetDTO _$_$_ExerciseSetDTOFromJson(Map<String, dynamic> json) {
  return _$_ExerciseSetDTO(
    load: (json['load'] as num?)?.toDouble(),
    reps: json['reps'] == null
        ? null
        : RepsRangeDTO.fromJson(json['reps'] as Map<String, dynamic>),
    rpe: json['rpe'] as int?,
  );
}

Map<String, dynamic> _$_$_ExerciseSetDTOToJson(_$_ExerciseSetDTO instance) =>
    <String, dynamic>{
      'load': instance.load,
      'reps': instance.reps,
      'rpe': instance.rpe,
    };
