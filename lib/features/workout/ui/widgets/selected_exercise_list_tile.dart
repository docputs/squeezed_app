import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';

class SelectedExerciseListTile extends StatelessWidget {
  final ExercisePlan exercise;
  final void Function(ExercisePlan exercise) onDeletePressed;
  final void Function(ExercisePlan exercise) onEditPressed;

  const SelectedExerciseListTile(
    this.exercise, {
    Key? key,
    required this.onDeletePressed,
    required this.onEditPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: Paddings.small),
          child: _buildMappedSetsDisplay(),
        ),
        const CustomDivider(),
      ],
    );
  }

  Widget _buildMappedSetsDisplay() {
    return Row(
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
        IconButton(
          icon: const Icon(Icons.edit, color: AppColors.grey),
          onPressed: () => onEditPressed(exercise),
        ),
        IconButton(
          icon: const Icon(Icons.delete, color: AppColors.grey),
          onPressed: () => onDeletePressed(exercise),
        ),
      ],
    );
  }
}
