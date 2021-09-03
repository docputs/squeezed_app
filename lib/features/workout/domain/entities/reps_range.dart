import 'package:freezed_annotation/freezed_annotation.dart';

part 'reps_range.freezed.dart';

@freezed
class RepsRange with _$RepsRange {
  const RepsRange._();

  const factory RepsRange(int min, int max) = _RepsRange;

  @override
  String toString() => '$min – $max';
}
