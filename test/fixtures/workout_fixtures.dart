import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';
import 'package:squeezed_app/features/workout/domain/entities/reps_range.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/features/workout/ui/view_models/workout_plan_view_model.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

final workoutPlanViewModel = WorkoutPlanViewModel(
  selectedWeekdays: {const WeekdayViewModel('nameOfDay', 1, 1)},
  exercises: exercises,
  workoutName: 'test workout',
  observations: '',
);

final workoutPlan = WorkoutPlan(
  title: 'test workout',
  daysOfWeek: {1},
  exercises: exercises,
  creationTimestamp: DateTime(2000),
  observations: null,
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
    ],
  ),
];

const mockExercises = [
  ExerciseDetails(
    id: '1',
    name: 'Supino reto',
    targetMuscle: 'Peito',
    synergistMuscles: ['Ombros', 'Tríceps'],
  ),
];
