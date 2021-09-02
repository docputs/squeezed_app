import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/finished_exercise.dart';

part 'finished_workout.freezed.dart';

@freezed
class FinishedWorkout with _$FinishedWorkout {
  const factory FinishedWorkout({
    required String id,
    required String workoutId,
    required List<FinishedExercise> exercises,
    required DateTime finishedTimestamp,
  }) = _FinishedWorkout;
}
// NAO LEVAR TODOS OS CAMPOS DO WORKOUTPLAN PRO DTO