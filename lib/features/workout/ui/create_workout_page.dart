import 'package:flutter/material.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class CreateWorkoutPage extends StatelessWidget {
  const CreateWorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Criar um treino',
      body: Center(
        child: Text('create workout'),
      ),
    );
  }
}
