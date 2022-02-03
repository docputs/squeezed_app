import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_set.dart';

class FullExercisePlanBottomSheet extends StatelessWidget {
  final ExercisePlan exercise;

  const FullExercisePlanBottomSheet(this.exercise, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _buildTopIndicator(),
          const SizedBox(height: 20),
          _buildExerciseTitle(),
          const SizedBox(height: 40),
          ...exercise.plannedSets.asMap().entries.map(_buildSetDisplay).toList(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Text _buildExerciseTitle() {
    return Text(
      exercise.name,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Widget _buildTopIndicator() {
    return Container(
      height: 4,
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.greyLight,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _buildSetDisplay(MapEntry<int, ExerciseSet> entry) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                '${entry.key + 1} série',
                style: const TextStyle(color: AppColors.grey),
              ),
              const SizedBox(width: 100),
              Text(entry.value.formattedLoad ?? ''),
              const Spacer(),
              Text(entry.value.formattedReps ?? ''),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
