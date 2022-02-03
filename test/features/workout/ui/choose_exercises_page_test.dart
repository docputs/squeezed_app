import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:olympia_design/olympia_design.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/choose_exercises_page.dart';
import 'package:squeezed_app/features/workout/ui/controllers/choose_exercises_controller.dart';
import 'package:squeezed_app/features/workout/ui/controllers/search_exercise_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/exercise_option_tile.dart';
import 'package:squeezed_app/features/workout/ui/widgets/muscle_filters.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/messages.dart';

void setUpDependencies() {
  AppContainer.getIt.registerSingleton(ChooseExercisesController());
  AppContainer.getIt.registerSingleton(SearchExerciseController());
}

void main() {
  setUpDependencies();

  testWidgets('page layout', (tester) async {
    await tester.pumpWidget(MaterialApp(home: ChooseExercisesPage()));

    expect(find.text(Messages.chooseExercisesNoExerciseSelected), findsOneWidget);
    expect(find.byType(MuscleFilters), findsWidgets);
  });

  testWidgets('exercise text field filter', (tester) async {
    await tester.pumpWidget(MaterialApp(home: ChooseExercisesPage()));

    expect(find.byType(TextField), findsOneWidget);
    expect(find.byType(ExerciseOptionTile), findsWidgets);

    await tester.enterText(find.byType(TextField), 'abcdefg');
    await tester.pump();

    expect(find.byType(ExerciseOptionTile), findsNothing);

    await tester.enterText(find.byType(TextField), 'supino');
    await tester.pump();

    expect(find.byType(ExerciseOptionTile), findsWidgets);
  });

  testWidgets('exercise muscle filter', (tester) async {
    await tester.pumpWidget(MaterialApp(home: ChooseExercisesPage()));
    await tester.tap(find.widgetWithText(CustomFilterChip, 'Peito'));
    await tester.pump();

    expect(find.byType(ExerciseOptionTile), findsWidgets);

    await tester.tap(find.widgetWithText(CustomFilterChip, 'Peito'));
    await tester.tap(find.widgetWithText(CustomFilterChip, 'Costas'));
    await tester.pump();

    expect(find.byType(ExerciseOptionTile), findsNothing);
    expect(find.text(Messages.chooseExercisesNoExerciseFound), findsOneWidget);
  });

  testWidgets('title changes when exercise is selected', (tester) async {
    final controller = AppContainer.get<ChooseExercisesController>();

    await tester.pumpWidget(MaterialApp(home: ChooseExercisesPage()));

    expect(find.text(Messages.chooseExercisesNoExerciseSelected), findsOneWidget);

    controller.addExercise(
      const ExercisePlan(
        id: '1',
        exercise: ExerciseDetails(id: '2', name: 'Test', targetMuscle: 'test'),
        plannedSets: [],
      ),
    );

    await tester.pump();

    expect(find.text(Messages.chooseExercisesNoExerciseSelected), findsNothing);
    expect(find.text(Messages.chooseExercisesOneExerciseSelected), findsOneWidget);

    controller.addExercise(
      const ExercisePlan(
        id: '2',
        exercise: ExerciseDetails(id: '3', name: 'Test 2', targetMuscle: 'test 2'),
        plannedSets: [],
      ),
    );

    await tester.pump();

    final selectedExercisesAmount = controller.selectedExercises.length;
    expect(find.text(Messages.chooseExercisesNExercisesSelected(selectedExercisesAmount)), findsOneWidget);
  });
}
