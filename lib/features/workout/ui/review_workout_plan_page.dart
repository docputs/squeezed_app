import 'package:flutter/material.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/ui/controllers/review_workout_plan_controller.dart';
import 'package:squeezed_app/features/workout/ui/view_models/create_workout_view_model.dart';
import 'package:squeezed_app/features/workout/ui/widgets/exercise_plan_list_tile.dart';
import 'package:squeezed_app/features/workout/ui/widgets/selected_weekdays_display.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_section_header.dart';

class ReviewWorkoutPlanPage extends StatelessWidget {
  final CreateWorkoutViewModel workout;

  ReviewWorkoutPlanPage(this.workout, {Key? key}) : super(key: key);

  final controller = AppContainer.get<ReviewWorkoutPlanController>();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Revisar treino',
      actions: [
        _buildSubmitButton(),
      ],
      body: Column(
        children: [
          const CustomSectionHeader('Nome do treino'),
          SizedBox(
            width: double.infinity,
            child: Text(
              workout.workoutName,
              style: const TextStyle(fontSize: 31, color: AppColors.grey),
            ),
          ),
          const SizedBox(height: 40),
          const CustomSectionHeader('Dias da semana', bottomPadding: 20),
          SelectedWeekdaysDisplay(workout.selectedWeekdays),
          const SizedBox(height: 40),
          const CustomSectionHeader('Exercícios'),
          Column(
            children: workout.exercises.map((e) => ExercisePlanListTile(e)).toList(),
          ),
          const SizedBox(height: 40),
          if (workout.observations != null) _buildObservationsSection(),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return TextButton(
      onPressed: controller.submitWorkoutPlan,
      child: const Text('Salvar'),
    );
  }

  Widget _buildObservationsSection() {
    return Column(
      children: [
        const CustomSectionHeader('Observações'),
        Text(workout.observations!),
      ],
    );
  }
}
