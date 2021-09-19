import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/ui/controllers/exercise_details_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/load_amount_input.dart';
import 'package:squeezed_app/features/workout/ui/widgets/reps_amount_input.dart';
import 'package:squeezed_app/features/workout/ui/widgets/sets_amount_input.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final ExerciseDetails exercise;

  ExerciseDetailsPage(this.exercise, {Key? key}) : super(key: key);

  @override
  _ExerciseDetailsPageState createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
  late ExerciseDetailsController controller;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  void _initializeController() {
    controller = AppContainer.get<ExerciseDetailsController>();
    controller.currentExercise = widget.exercise;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hasPadding: false,
      title: widget.exercise.name,
      actions: [
        TextButton(
          onPressed: () {
            controller.addExerciseToList(context);
          },
          child: const Text('Adicionar'),
        ),
      ],
      body: Column(
        children: [
          if (widget.exercise.hasMediaToDisplay) _buildExerciseMediaDisplay(),
          SetsAmountInput(),
          RepsAmountInput(),
          LoadAmountInput(),
        ],
      ),
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
