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
    } on StateError catch (e) {
      return null;
    }
  }

  void animateToSelectedWeekday(WeekdayViewModel weekday) {
    pageController.animateToPage(weekday.weekdayNumber == 7 ? 0 : weekday.weekdayNumber,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
  }
}
