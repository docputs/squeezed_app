import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/reps_range.dart';

part 'exercise_set.freezed.dart';

@freezed
class ExerciseSet with _$ExerciseSet {
  const factory ExerciseSet({
    double? load,
    RepsRange? reps,
    int? rpe,
  }) = _ExerciseSet;
}
