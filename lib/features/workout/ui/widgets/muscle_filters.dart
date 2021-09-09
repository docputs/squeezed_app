import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/ui/controllers/search_exercise_controller.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/constants.dart';
import 'package:squeezed_app/widgets/custom_filter_chip.dart';

class MuscleFilters extends StatelessWidget {
  final controller = AppContainer.get<SearchExerciseController>();

  MuscleFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Constants.defaultPadding),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: _muscles.map(_buildFilterChip).toList(),
      ),
    );
  }

  Widget _buildFilterChip(String muscle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CustomFilterChip(
        labelText: muscle,
        onSelected: (value) {
          if (value) {
            controller.selectMuscle(muscle);
          } else {
            controller.unselectMuscle(muscle);
          }
        },
      ),
    );
  }
}

const _muscles = [
  'Peito',
  'Costas',
  'Ombros',
  'Bíceps',
  'Tríceps',
  'Pernas',
  'Panturrilhas',
  'Trapézio',
];
