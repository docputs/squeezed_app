import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';
import 'package:squeezed_app/features/workout/domain/entities/reps_range.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';

final allWorkoutPlans = [workoutPlan];

final workoutPlan = WorkoutPlan(
  id: 'abc',
  title: 'Peito, ombros e tríceps',
  daysOfWeek: {1, 2, 3},
  exercises: exercises,
  creationTimestamp: DateTime.now(),
);

final exercises = const [
  ExercisePlan(
    id: '1',
    exercise: ExerciseDetails(
      id: '123',
      name: 'Supino reto',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
      ExerciseSet(load: 100, reps: RepsRange(2, 4)),
    ],
  ),
  ExercisePlan(
    id: '2',
    exercise: ExerciseDetails(
      id: '456',
      name: 'Supino inclinado',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
  ExercisePlan(
    id: '3',
    exercise: ExerciseDetails(
      id: '789',
      name: 'Supino máquina',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
  ExercisePlan(
    id: '4',
    exercise: ExerciseDetails(
      id: '789',
      name: 'Supino máquina',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
  ExercisePlan(
    id: '5',
    exercise: ExerciseDetails(
      id: '789',
      name: 'Supino máquina',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
  ExercisePlan(
    id: '6',
    exercise: ExerciseDetails(
      id: '789',
      name: 'Supino máquina',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
  ExercisePlan(
    id: '7',
    exercise: ExerciseDetails(
      id: '789',
      name: 'Supino máquina',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
  ExercisePlan(
    id: '8',
    exercise: ExerciseDetails(
      id: '789',
      name: 'Supino máquina',
      targetMuscle: 'Peito',
    ),
    plannedSets: [
      ExerciseSet(load: 80, reps: RepsRange(8, 10)),
      ExerciseSet(load: 80, reps: RepsRange(6, 8)),
    ],
  ),
];
