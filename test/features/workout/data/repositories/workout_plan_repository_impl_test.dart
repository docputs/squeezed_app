import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:squeezed_app/features/workout/data/repositories/workout_plan_repository_impl.dart';
import 'package:squeezed_app/features/workout/domain/repositories/workout_plan_repository.dart';
import 'package:squeezed_app/shared/utils/firestore_extensions.dart';

import '../../../../fixtures/user_fixtures.dart';
import '../../../../fixtures/workout_fixtures.dart';

void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late FakeFirebaseFirestore fakeFirestore;
  late WorkoutPlanRepository repository;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth(signedIn: true, mockUser: mockUser);
    fakeFirestore = FakeFirebaseFirestore();
    repository = WorkoutPlanRepositoryImpl(fakeFirestore, mockFirebaseAuth);
  });

  test('should add WorkoutPlan in database successfully', () async {
    await repository.create(workoutPlan);

    fakeFirestore.workoutPlanCollection(mockUser.uid);
  });
}
