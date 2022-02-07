import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/reps_range.dart';

part 'reps_range_dto.freezed.dart';
part 'reps_range_dto.g.dart';

@freezed
class RepsRangeDTO with _$RepsRangeDTO {
  const factory RepsRangeDTO(int min, int max) = _RepsRangeDTO;

  factory RepsRangeDTO.fromJson(Map<String, dynamic> json) => _$RepsRangeDTOFromJson(json);

  factory RepsRangeDTO.fromDomain(RepsRange model) => RepsRangeDTO(model.min, model.max);

  RepsRange toDomain() => RepsRange(min, max);
}
