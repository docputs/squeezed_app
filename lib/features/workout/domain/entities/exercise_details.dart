import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_details.freezed.dart';

@freezed
class ExerciseDetails with _$ExerciseDetails {
  const ExerciseDetails._();

  const factory ExerciseDetails({
    required String id,
    required String name,
    required String targetMuscle,
    String? description,
    List<String>? synergistMuscles,
    String? imageUrl,
    String? videoUrl,
  }) = _ExerciseDetails;

  bool get hasMediaToDisplay => imageUrl != null || videoUrl != null;
}
