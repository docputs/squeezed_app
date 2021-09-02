import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/widgets/custom_divider.dart';

class WorkoutPlanDisplay extends StatelessWidget {
  final WorkoutPlan workout;

  const WorkoutPlanDisplay(this.workout, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(workout.title, style: const TextStyle(fontSize: 20)),
        ),
        const SizedBox(height: 20),
        Column(
          children: workout.exercises
              .map(
                (e) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.name),
                              Text(
                                e.targetMuscle,
                                style: const TextStyle(color: AppColors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          const Spacer(),
                          // Text(e.)
                        ],
                      ),
                    ),
                    const CustomDivider(),
                  ],
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
