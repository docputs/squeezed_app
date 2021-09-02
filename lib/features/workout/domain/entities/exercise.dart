import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String id,
    required String name,
    required String targetMuscle,
    String? description,
    List<String>? synergistMuscles,
    String? imageUrl,
    String? videoUrl,
  }) = _Exercise;
}
