import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/widgets/full_exercise_plan_bottom_sheet.dart';
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
          onTap: () => _showFullExercisePlan(context),
          splashColor: AppColors.greyLight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: _buildMappedSetsDisplay(),
          ),
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
            const SizedBox(height: 5),
            Text(
              exercise.targetMuscle,
              style: const TextStyle(color: AppColors.grey, fontSize: 13),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '${exercise.setsAmount} séries',
          style: const TextStyle(
            color: AppColors.primary,
            decoration: TextDecoration.underline,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Future<void> _showFullExercisePlan(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: _buildModalBottomSheetShape(),
      builder: (context) => Wrap(children: [FullExercisePlanBottomSheet(exercise)]),
    );
  }

  ShapeBorder _buildModalBottomSheetShape() {
    return const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Constants.defaultBorderRadius * 4),
        topRight: Radius.circular(Constants.defaultBorderRadius * 4),
      ),
    );
  }
}
