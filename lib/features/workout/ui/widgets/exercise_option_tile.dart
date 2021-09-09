import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';

class ExerciseOptionTile extends StatelessWidget {
  final Exercise exercise;

  const ExerciseOptionTile(this.exercise, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(ExerciseDetailsPageRoute(exercise: exercise));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLeadingInformation(),
            const Icon(Icons.chevron_right, color: AppColors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildLeadingInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          exercise.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.greyDark,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          exercise.targetMuscle,
          style: const TextStyle(fontSize: 13, color: AppColors.grey),
        ),
      ],
    );
  }
}
