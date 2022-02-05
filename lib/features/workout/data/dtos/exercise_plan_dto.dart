import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/data/dtos/exercise_set_dto.dart';

part 'exercise_plan_dto.freezed.dart';
part 'exercise_plan_dto.g.dart';

@freezed
class ExercisePlanDTO with _$ExercisePlanDTO {
  const factory ExercisePlanDTO({
    required String id,
    required String exerciseDetailsId,
    required List<ExerciseSetDTO> plannedSets,
  }) = _ExercisePlanDTO;

  factory ExercisePlanDTO.fromJson(Map<String, dynamic> json) => _$ExercisePlanDTOFromJson(json);
}
