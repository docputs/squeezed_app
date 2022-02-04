import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:squeezed_app/features/workout/domain/repositories/workout_plan_repository.dart';
import 'package:squeezed_app/features/workout/domain/usecases/create_workout_plan.dart';

import '../../../../fixtures/workout_fixtures.dart';

class MockWorkoutPlanRepository extends Mock implements WorkoutPlanRepository {}

void main() {
  late MockWorkoutPlanRepository mockWorkoutPlanRepository;
  late CreateWorkoutPlan createWorkoutPlan;

  setUpAll(() {
    registerFallbackValue(workoutPlan);
  });

  setUp(() {
    mockWorkoutPlanRepository = MockWorkoutPlanRepository();
    createWorkoutPlan = CreateWorkoutPlan(mockWorkoutPlanRepository);
  });

  test('should call repository to create WorkoutPlan once', () async {
    when(() => mockWorkoutPlanRepository.create(any())).thenAnswer((_) async {});

    await createWorkoutPlan(workoutPlan);

    verify(() => mockWorkoutPlanRepository.create(any())).called(1);
  });
}
