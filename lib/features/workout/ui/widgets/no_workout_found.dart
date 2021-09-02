import 'package:flutter/material.dart';

class NoWorkoutFound extends StatelessWidget {
  const NoWorkoutFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton.icon(
          onPressed: () {
            // TODO: criar treino com data
          },
          icon: const Icon(Icons.add),
          label: const Text('Criar um treino para este dia'),
        ),
      ],
    );
  }
}
