import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/data/dtos/exercise_details_dto.dart';
import 'package:squeezed_app/features/workout/data/dtos/exercise_set_dto.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';

part 'exercise_plan_dto.freezed.dart';
part 'exercise_plan_dto.g.dart';

@freezed
class ExercisePlanDTO with _$ExercisePlanDTO {
  const ExercisePlanDTO._();

  const factory ExercisePlanDTO({
    required String id,
    required ExerciseDetailsDTO details,
    required List<ExerciseSetDTO> plannedSets,
  }) = _ExercisePlanDTO;

  factory ExercisePlanDTO.fromJson(Map<String, dynamic> json) => _$ExercisePlanDTOFromJson(json);

  factory ExercisePlanDTO.fromDomain(ExercisePlan model) {
    return ExercisePlanDTO(
      id: model.id,
      details: ExerciseDetailsDTO.fromDomain(model.details),
      plannedSets: model.plannedSets.map((e) => ExerciseSetDTO.fromDomain(e)).toList(),
    );
  }

  ExercisePlan toDomain() {
    return ExercisePlan(
      id: id,
      details: details.toDomain(),
      plannedSets: plannedSets.map((e) => e.toDomain()).toList(),
    );
  }
}
