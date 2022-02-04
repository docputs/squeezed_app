import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/ui/controllers/workout_page_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/no_workout_found.dart';
import 'package:squeezed_app/features/workout/ui/widgets/workout_day_selector.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/constants.dart';
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
    return AppScaffold(
      isScrollable: false,
      body: Column(
        children: [
          const SizedBox(height: 40),
          _buildHeaderRow(),
          const SizedBox(height: 40),
          WorkoutDaySelector(onWeekdaySelected: _controller.animateToSelectedWeekday),
          const SizedBox(height: 40),
          Expanded(child: _calculateWorkoutDisplay()),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Meus treinos',
          style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
        ),
        _buildCreateWorkoutButton(),
      ],
    );
  }

  Widget _buildCreateWorkoutButton() {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(CreateWorkoutRoute());
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(Constants.defaultBorderRadius),
        ),
        child: const Icon(Icons.add, color: Colors.white),
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
