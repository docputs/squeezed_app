import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/features/workout/ui/widgets/exercise_plan_list_tile.dart';

class WorkoutPlanDisplay extends StatelessWidget {
  final WorkoutPlan workout;

  const WorkoutPlanDisplay(this.workout, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(workout.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: () {},
              child: Text(
                'COMEÇAR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const CustomDivider(color: AppColors.grey),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: workout.exercises.map((e) => ExercisePlanListTile(e)).toList(),
          ),
        ),
      ],
    );
  }
}
