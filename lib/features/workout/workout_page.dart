import 'package:flutter/material.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isScrollable: false,
      body: Center(
        child: Text('workout'),
      ),
    );
  }
}
