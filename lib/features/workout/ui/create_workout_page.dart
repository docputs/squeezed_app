import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/ui/controllers/create_workout_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/multiple_weekday_selector.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/messages.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_elevated_button.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';
import 'package:squeezed_app/widgets/full_width_label_text.dart';

class CreateWorkoutPage extends StatelessWidget {
  final controller = AppContainer.get<CreateWorkoutController>();

  CreateWorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Messages.createWorkoutPageTitle,
      body: Column(
        children: [
          const FullWidthLabelText(Messages.createWorkoutSelectWeekdaysLabel),
          const SizedBox(height: 15),
          MultipleWeekdaySelector(controller: controller),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: Messages.createWorkoutNameFieldLabel,
            hintText: Messages.createWorkoutNameHint,
            onChanged: controller.changeWorkoutName,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: Messages.createWorkoutObservationsFieldLabel,
            isMultiline: true,
            onChanged: controller.changeObservations,
          ),
          const SizedBox(height: 40),
          Observer(
            builder: (_) => CustomElevatedButton(
              text: Messages.createWorkoutSubmitButtonText,
              onPressed: controller.isFormValid
                  ? () {
                      AutoRouter.of(context).push(ChooseExercisesPageRoute());
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
