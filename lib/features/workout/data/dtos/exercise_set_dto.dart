import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/data/dtos/reps_range_dto.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';

part 'exercise_set_dto.freezed.dart';
part 'exercise_set_dto.g.dart';

@freezed
class ExerciseSetDTO with _$ExerciseSetDTO {
  const ExerciseSetDTO._();

  const factory ExerciseSetDTO({
    double? load,
    RepsRangeDTO? reps,
    int? rpe,
  }) = _ExerciseSetDTO;

  factory ExerciseSetDTO.fromJson(Map<String, dynamic> json) => _$ExerciseSetDTOFromJson(json);

  factory ExerciseSetDTO.fromDomain(ExerciseSet model) {
    final reps = model.reps != null ? RepsRangeDTO.fromDomain(model.reps!) : null;
    return ExerciseSetDTO(
      load: model.load,
      reps: reps,
      rpe: model.rpe,
    );
  }

  ExerciseSet toDomain() {
    return ExerciseSet(
      load: load,
      reps: reps?.toDomain(),
      rpe: rpe,
    );
  }
}
