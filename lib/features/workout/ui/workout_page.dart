import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/ui/controllers/workout_page_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/no_workout_found.dart';
import 'package:squeezed_app/features/workout/ui/widgets/weekday_selector.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

import 'widgets/workout_plan_display.dart';

class WorkoutPage extends StatefulWidget {
  WorkoutPage({Key? key}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  final _controller = AppContainer.get<WorkoutPageController>();

  @override
  void initState() {
    super.initState();
    _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppScaffold(
      isScrollable: false,
      body: Column(
        children: [
          const SizedBox(height: 40),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Meus treinos',
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40),
          WeekdaySelector(onWeekdaySelected: _controller.animateToSelectedWeekday),
          const SizedBox(height: 40),
          Expanded(child: _calculateWorkoutDisplay()),
        ],
      ),
    );
  }

  Widget _calculateWorkoutDisplay() {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: _controller.pageController,
      itemCount: _controller.workoutRoutine.length,
      itemBuilder: (context, index) {
        final workout = _controller.workoutRoutine[index];
        return workout != null ? WorkoutPlanDisplay(workout) : const NoWorkoutFound();
      },
    );
  }
}
