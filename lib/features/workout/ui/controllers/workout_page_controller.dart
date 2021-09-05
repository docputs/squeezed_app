import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/features/workout/ui/fixtures.dart';
import 'package:squeezed_app/shared/base/base_store.dart';
import 'package:squeezed_app/shared/view_models/weekday_view_model.dart';

part 'workout_page_controller.g.dart';

@lazySingleton
class WorkoutPageController = _WorkoutPageControllerBase with _$WorkoutPageController;

abstract class _WorkoutPageControllerBase extends BaseStore with Store {
  @observable
  List<WorkoutPlan?> workoutRoutine = [];

  final pageController = PageController();

  Future<void> initialize() async {
    workoutRoutine = _generateWorkoutRoutineBasedOnWeek();
  }

  List<WorkoutPlan?> _generateWorkoutRoutineBasedOnWeek() {
    return List.generate(DateTime.daysPerWeek, (weekdayNumber) => _findWorkoutWithinWeekday(weekdayNumber));
  }

  WorkoutPlan? _findWorkoutWithinWeekday(int weekdayNumber) {
    try {
      return allWorkoutPlans.firstWhere((workout) => workout.daysOfWeek.contains(weekdayNumber));
    } on StateError {
      return null;
    }
  }

  void animateToSelectedWeekday(WeekdayViewModel weekday) {
    // Sunday appears at first position on WeekdaySelector
    // So the first button on WeekdaySelector has to animate towards the last element on workoutRoutine
    pageController.animateToPage(weekday.weekdayNumber == DateTime.sunday ? 0 : weekday.weekdayNumber,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
  }
}
