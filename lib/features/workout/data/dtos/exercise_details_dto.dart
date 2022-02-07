import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_details.dart';

part 'exercise_details_dto.freezed.dart';

@freezed
class ExerciseDetailsDTO with _$ExerciseDetailsDTO {
  const ExerciseDetailsDTO._();

  const factory ExerciseDetailsDTO({
    required String id,
    required String name,
    required String targetMuscle,
    String? description,
    List<String>? synergistMuscles,
    String? imageUrl,
    String? videoUrl,
  }) = _ExerciseDetailsDTO;

  factory ExerciseDetailsDTO.fromJson(Map<String, dynamic> json) {
    return ExerciseDetailsDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      targetMuscle: json['targetMuscle'] as String,
      description: json['description'] as String?,
      synergistMuscles: (json['synergistMuscles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {'id': id};

  factory ExerciseDetailsDTO.fromDomain(ExerciseDetails model) {
    return ExerciseDetailsDTO(
      id: model.id,
      name: model.name,
      targetMuscle: model.targetMuscle,
      description: model.description,
      imageUrl: model.imageUrl,
      synergistMuscles: model.synergistMuscles,
      videoUrl: model.videoUrl,
    );
  }

  ExerciseDetails toDomain() {
    return ExerciseDetails(
      id: id,
      name: name,
      targetMuscle: targetMuscle,
    );
  }
}
