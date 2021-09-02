import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/custom_divider.dart';

class ExercisePlanListTile extends StatelessWidget {
  final ExercisePlan exercise;

  const ExercisePlanListTile(this.exercise, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Constants.defaultBorderRadius * 4),
                  topRight: Radius.circular(Constants.defaultBorderRadius * 4),
                ),
              ),
              builder: (context) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      exercise.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 40),
                    Text('tchau'),
                  ],
                ),
              ),
            );
          },
          splashColor: AppColors.greyLight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exercise.name),
                    Text(
                      exercise.targetMuscle,
                      style: const TextStyle(color: AppColors.grey, fontSize: 13),
                    ),
                  ],
                ),
                const Spacer(),
                // Text(e.)
              ],
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
