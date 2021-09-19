import 'package:freezed_annotation/freezed_annotation.dart';

part 'reps_range.freezed.dart';

@freezed
class RepsRange with _$RepsRange {
  const RepsRange._();

  const factory RepsRange(int min, int max) = _RepsRange;

  factory RepsRange.zero() => const RepsRange(0, 0);

  bool get isEmpty => min == 0 || max == 0;

  @override
  String toString() => '$min – $max';
}
