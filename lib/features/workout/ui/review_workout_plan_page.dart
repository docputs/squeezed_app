import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/ui/view_models/create_workout_view_model.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class ReviewWorkoutPlanPage extends StatelessWidget {
  final CreateWorkoutViewModel workout;

  const ReviewWorkoutPlanPage(this.workout, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Revisar treino',
      body: Column(
        children: [
          Text(workout.workoutName),
          Text(workout.exercises.toString()),
          Text(workout.selectedWeekdays.toString()),
          Text(workout.observations ?? 'no obs'),
        ],
      ),
    );
  }
}
