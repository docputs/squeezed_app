import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/controllers/choose_exercises_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/selected_exercise_list_tile.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/custom_elevated_button.dart';

class CustomSlidingSheetDialog extends SlidingSheetDialog {
  CustomSlidingSheetDialog({
    SheetController? controller,
    required Widget Function(BuildContext, SheetState, SheetController?) builder,
  }) : super(
          avoidStatusBar: true,
          cornerRadius: 20,
          cornerRadiusOnFullscreen: 0,
          controller: controller,
          duration: const Duration(milliseconds: 300),
          builder: (context, state) => builder(context, state, controller),
        );
}

class SelectedExercisesBottomSheetBody extends StatefulWidget {
  final SheetController? sheetController;
  final VoidCallback? onSubmit;

  SelectedExercisesBottomSheetBody({
    Key? key,
    this.sheetController,
    this.onSubmit,
  }) : super(key: key);

  @override
  _SelectedExercisesBottomSheetBodyState createState() => _SelectedExercisesBottomSheetBodyState();
}

class _SelectedExercisesBottomSheetBodyState extends State<SelectedExercisesBottomSheetBody> {
  final controller = AppContainer.get<ChooseExercisesController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: controller.selectedExercises
                .map(
                  (exercise) => SelectedExerciseListTile(
                    exercise,
                    onDeletePressed: _handleDeletePressed,
                    onEditPressed: _handleEditPressed,
                  ),
                )
                .toList(),
          ),
          CustomElevatedButton(
            text: 'Finalizar escolha',
            onPressed: widget.onSubmit != null
                ? () {
                    widget.onSubmit!();
                    _hideCurrentBottomSheet();
                  }
                : null,
          ),
        ],
      ),
    );
  }

  void _handleDeletePressed(ExercisePlan exercise) {
    controller.removeExercise(exercise);
    if (!controller.hasSelectedExercises) {
      _hideCurrentBottomSheet();
    }
  }

  void _hideCurrentBottomSheet() {
    Navigator.of(context).pop();
  }

  Future<void> _handleEditPressed(ExercisePlan exercisePlan) async {
    final result = await AutoRouter.of(context).popAndPush<ExercisePlan, Object?>(ExercisePlanRoute(
      editableExercise: exercisePlan,
    ));
    if (result != null) {
      controller.editExercise(result);
    }
  }
}
