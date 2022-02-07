import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';

part 'exercise_plan.freezed.dart';

@freezed
class ExercisePlan with _$ExercisePlan {
  const ExercisePlan._();

  const factory ExercisePlan({
    required String id,
    required ExerciseDetails details,
    required List<ExerciseSet> plannedSets,
  }) = _ExercisePlan;

  String get name => details.name;

  String get targetMuscle => details.targetMuscle;

  int get setsAmount => plannedSets.length;

  bool everySetHasEqualRepsRange() {
    final sampleRepsRange = plannedSets.first.reps;
    return plannedSets.every((element) => element.reps == sampleRepsRange);
  }

  String? getRepsRangeIfTheyAreEqual() {
    if (everySetHasEqualRepsRange()) {
      return plannedSets.first.reps.toString();
    }
  }
}
