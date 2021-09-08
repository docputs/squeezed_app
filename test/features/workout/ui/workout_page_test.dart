import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:squeezed_app/features/workout/ui/controllers/workout_page_controller.dart';
import 'package:squeezed_app/features/workout/ui/widgets/workout_day_selector.dart';
import 'package:squeezed_app/features/workout/ui/workout_page.dart';
import 'package:squeezed_app/shared/app_container.dart';

void main() {
  setUp(() {
    AppContainer.getIt.registerSingleton<WorkoutPageController>(WorkoutPageController());
  });

  testWidgets('should display "Meus treinos" header text.', (tester) async {
    await tester.pumpWidget(MaterialApp(home: WorkoutPage()));

    expect(find.text('Meus treinos'), findsOneWidget);
    expect(find.byType(WorkoutDaySelector), findsOneWidget);
    
  });
}
