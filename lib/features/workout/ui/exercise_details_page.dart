import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class ExerciseDetailsPage extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailsPage(this.exercise, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: exercise.name,
      body: Center(
        child: Text('details'),
      ),
    );
  }
}
