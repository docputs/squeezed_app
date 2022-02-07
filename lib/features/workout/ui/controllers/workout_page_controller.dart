import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';
import 'package:squeezed_app/features/workout/domain/entities/reps_range.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/shared/base/base_store.dart';
import 'package:squeezed_app/shared/utils/weekday_utils.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

part 'workout_page_controller.g.dart';

@lazySingleton
class WorkoutPageController = _WorkoutPageControllerBase with _$WorkoutPageController;

abstract class _WorkoutPageControllerBase extends BaseStore with Store {
  @observable
  List<WorkoutPlan?> workoutRoutine = [];

  final pageController = PageController(
    initialPage: WeekdayUtils.recalculateWeekdayNumberConsideringSunday(DateTime.now().weekday),
  );

  Future<void> initialize() async {
    workoutRoutine = _generateWorkoutRoutineBasedOnWeek();
  }

  List<WorkoutPlan?> _generateWorkoutRoutineBasedOnWeek() {
    return List.generate(DateTime.daysPerWeek, (weekdayNumber) => _findWorkoutWithinWeekday(weekdayNumber));
  }

  WorkoutPlan? _findWorkoutWithinWeekday(int weekdayNumber) {
    return allWorkoutPlans.firstWhereOrNull((workout) => workout.daysOfWeek.contains(weekdayNumber));
  }

  void animateToSelectedWeekday(WeekdayViewModel weekday) {
    // Sunday appears at first position on WeekdaySelector
    // So the first button on WeekdaySelector has to animate towards the last element on workoutRoutine
    final recalculatedWeekday = WeekdayUtils.recalculateWeekdayNumberConsideringSunday(weekday.weekdayNumber);
    pageController.animateToPage(recalculatedWeekday,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
  }
}

final allWorkoutPlans = [workoutPlan];

final workoutPlan = WorkoutPlan(
  id: 'abc',
  title: 'Peito, ombros e tríceps',
  daysOfWeek: {1, 2, 3},
  exercises: exercises,
  creationTimestamp: DateTime.now(),
  observations: null,
);

final exercises = const [
  ExercisePlan(
    id: '1',
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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
    details: ExerciseDetails(
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

const mockExercises = [
  ExerciseDetails(
    id: '1',
    name: 'Supino reto',
    targetMuscle: 'Peito',
    synergistMuscles: ['Ombros', 'Tríceps'],
  ),
  ExerciseDetails(
    id: '2',
    name: 'Supino inclinado',
    targetMuscle: 'Peito',
    synergistMuscles: ['Ombros', 'Tríceps'],
  ),
  ExerciseDetails(
    id: '3',
    name: 'Supino declinado',
    targetMuscle: 'Peito',
    synergistMuscles: ['Ombros', 'Tríceps'],
  ),
  ExerciseDetails(
    id: '4',
    name: 'Crucifixo reto',
    targetMuscle: 'Peito',
    synergistMuscles: ['Ombros', 'Tríceps'],
  ),
  ExerciseDetails(
    id: '5',
    name: 'Crucifixo inclinado',
    targetMuscle: 'Peito',
    synergistMuscles: ['Ombros', 'Tríceps'],
  ),
  ExerciseDetails(
    id: '6',
    name: 'Elevação lateral',
    targetMuscle: 'Ombros',
  ),
  ExerciseDetails(
    id: '7',
    name: 'Elevação frontal',
    targetMuscle: 'Ombros',
  ),
];
