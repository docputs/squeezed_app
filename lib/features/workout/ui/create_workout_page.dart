import 'package:flutter/material.dart';
import 'package:squeezed_app/features/workout/ui/widgets/weekday_selector.dart';
import 'package:squeezed_app/features/workout/ui/widgets/workout_day_selector.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';
import 'package:squeezed_app/widgets/full_width_label_text.dart';

class CreateWorkoutPage extends StatelessWidget {
  const CreateWorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Criar um treino',
      actions: [
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {},
        )
      ],
      body: Column(
        children: [
          const FullWidthLabelText('Selecione os dias da semana'),
          const SizedBox(height: 15),
          WeekdaySelector(),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'Nome do treino',
            hintText: 'Ex: costas e bíceps',
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'Observações',
          ),
        ],
      ),
    );
  }
}
