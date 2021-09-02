import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';

part 'finished_exercise.freezed.dart';

@freezed
class FinishedExercise with _$FinishedExercise {
  const factory FinishedExercise({
    required String id,
    required String exerciseId,
    required List<ExerciseSet> performedSets,
  }) = _FinishedExercise;
}
