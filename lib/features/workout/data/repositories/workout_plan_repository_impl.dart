import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';
import 'package:squeezed_app/features/workout/domain/repositories/workout_plan_repository.dart';

import '../../../../shared/utils/firestore_extensions.dart';

class WorkoutPlanRepositoryImpl implements WorkoutPlanRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  const WorkoutPlanRepositoryImpl(this._firestore, this._firebaseAuth);

  String get userId => _firebaseAuth.currentUser!.uid;

  @override
  Future<void> create(WorkoutPlan workout) async {
    await _firestore.workoutPlanCollection(userId).add(workout);
  }
}
