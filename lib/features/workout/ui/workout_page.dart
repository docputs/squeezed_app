import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/ui/widgets/weekday_selector.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isScrollable: false,
      body: Column(
        children: [
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Meus treinos',
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40),
          const WeekdaySelector(),
        ],
      ),
    );
  }
}
