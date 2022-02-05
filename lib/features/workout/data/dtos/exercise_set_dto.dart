import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/data/dtos/reps_range_dto.dart';

part 'exercise_set_dto.freezed.dart';
part 'exercise_set_dto.g.dart';

@freezed
class ExerciseSetDTO with _$ExerciseSetDTO {
  const factory ExerciseSetDTO({
    double? load,
    RepsRangeDTO? reps,
    int? rpe,
  }) = _ExerciseSetDTO;

  factory ExerciseSetDTO.fromJson(Map<String, dynamic> json) => _$ExerciseSetDTOFromJson(json);
}
