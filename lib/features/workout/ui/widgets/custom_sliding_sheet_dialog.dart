import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/controllers/choose_exercises_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/selected_exercise_list_tile.dart';
import 'package:squeezed_app/shared/app_container.dart';

class CustomSlidingSheetDialog extends SlidingSheetDialog {
  CustomSlidingSheetDialog({SheetController? controller})
      : super(
          avoidStatusBar: true,
          cornerRadius: 20,
          cornerRadiusOnFullscreen: 0,
          controller: controller,
          builder: (_, state) => SelectedExercisesBottomSheetBody(sheetController: controller),
        );
}

class SelectedExercisesBottomSheetBody extends StatefulWidget {
  final SheetController? sheetController;

  SelectedExercisesBottomSheetBody({
    Key? key,
    this.sheetController,
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
