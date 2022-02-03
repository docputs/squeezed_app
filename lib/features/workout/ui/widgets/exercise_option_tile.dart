import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';

class ExerciseOptionTile extends StatelessWidget {
  final ExerciseDetails exercise;
  final void Function(ExerciseDetails exercise)? onTap;

  const ExerciseOptionTile(this.exercise, {Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!(exercise) : null,
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
