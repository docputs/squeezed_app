import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';

part 'exercise_plan.freezed.dart';

@freezed
class ExercisePlan with _$ExercisePlan {
  const ExercisePlan._();

  const factory ExercisePlan({
    required String id,
    required ExerciseDetails exercise,
    required List<ExerciseSet> plannedSets,
  }) = _ExercisePlan;

  String get name => exercise.name;

  String get targetMuscle => exercise.targetMuscle;

  int get setsAmount => plannedSets.length;

  bool everySetHasEqualRepsRange() {
    final sampleRepsRange = plannedSets.first.reps;
    return plannedSets.every((element) => element.reps == sampleRepsRange);
  }

  String? getRepsRange() {
    if (everySetHasEqualRepsRange()) {
      return plannedSets.first.reps.toString();
    }
  }
}

class ExercisePlanDTO {
  // Nao usar o Exercise inteiro
  final String exerciseId;

  ExercisePlanDTO(this.exerciseId);
}
