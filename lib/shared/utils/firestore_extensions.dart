import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:squeezed_app/features/workout/data/dtos/workout_plan_dto.dart';
import 'package:squeezed_app/features/workout/domain/entities/workout_plan.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  DocumentReference userDocument(String userId) {
    return collection('users').doc(userId);
  }

  CollectionReference<WorkoutPlan> workoutPlanCollection(String userId) {
    return userDocument(userId).collection('workoutPlans').withConverter(
          fromFirestore: (snapshot, _) => WorkoutPlanDTO.fromFirestore(snapshot).toDomain(),
          toFirestore: (value, options) => WorkoutPlanDTO.fromDomain(value).toJson(),
        );
  }
}
