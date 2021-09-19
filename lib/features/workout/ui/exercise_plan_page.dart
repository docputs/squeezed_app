import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/controllers/exercise_plan_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/load_amount_input.dart';
import 'package:squeezed_app/features/workout/ui/widgets/reps_amount_input.dart';
import 'package:squeezed_app/features/workout/ui/widgets/sets_amount_input.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class ExercisePlanPage extends StatefulWidget {
  final ExerciseDetails? exerciseDetails;
  final ExercisePlan? editableExercise;

  const ExercisePlanPage({
    Key? key,
    this.exerciseDetails,
    this.editableExercise,
  })  : assert(exerciseDetails == null || editableExercise == null),
        super(key: key);

  bool get isEditing => editableExercise != null;

  @override
  _ExercisePlanPageState createState() => _ExercisePlanPageState();
}

class _ExercisePlanPageState extends State<ExercisePlanPage> {
  late ExercisePlanController controller;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  void _initializeController() {
    controller = AppContainer.get<ExercisePlanController>();
    if (widget.isEditing) {
      controller.initializeEditableExercisePlan(widget.editableExercise!);
    } else {
      controller.initializeExerciseDetails(widget.exerciseDetails!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hasPadding: false,
      title: controller.exerciseDetails.name,
      actions: [
        widget.isEditing ? _buildUpdateExerciseButton() : _buildAddExerciseButton(),
      ],
      body: Column(
        children: [
          if (controller.exerciseDetails.hasMediaToDisplay) _buildExerciseMediaDisplay(),
          SetsAmountInput(controller: controller),
          RepsAmountInput(controller: controller),
          LoadAmountInput(controller: controller),
        ],
      ),
    );
  }

  Widget _buildUpdateExerciseButton() {
    return TextButton(
      onPressed: () => controller.updateExerciseInList(context),
      child: const Text('Salvar'),
    );
  }

  Widget _buildAddExerciseButton() {
    return TextButton(
      onPressed: () => controller.addExerciseToList(context),
      child: const Text('Adicionar'),
    );
  }

  Widget _buildExerciseMediaDisplay() {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.black,
    );
  }

  @override
  void dispose() {
    controller.onDispose();
    super.dispose();
  }
}
