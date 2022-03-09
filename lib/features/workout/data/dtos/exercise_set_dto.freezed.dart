// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_set_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseSetDTO _$ExerciseSetDTOFromJson(Map<String, dynamic> json) {
  return _ExerciseSetDTO.fromJson(json);
}

/// @nodoc
class _$ExerciseSetDTOTearOff {
  const _$ExerciseSetDTOTearOff();

  _ExerciseSetDTO call({double? load, RepsRangeDTO? reps, int? rpe}) {
    return _ExerciseSetDTO(
      load: load,
      reps: reps,
      rpe: rpe,
    );
  }

  ExerciseSetDTO fromJson(Map<String, Object> json) {
    return ExerciseSetDTO.fromJson(json);
  }
}

/// @nodoc
const $ExerciseSetDTO = _$ExerciseSetDTOTearOff();

/// @nodoc
mixin _$ExerciseSetDTO {
  double? get load => throw _privateConstructorUsedError;
  RepsRangeDTO? get reps => throw _privateConstructorUsedError;
  int? get rpe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseSetDTOCopyWith<ExerciseSetDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSetDTOCopyWith<$Res> {
  factory $ExerciseSetDTOCopyWith(
          ExerciseSetDTO value, $Res Function(ExerciseSetDTO) then) =
      _$ExerciseSetDTOCopyWithImpl<$Res>;
  $Res call({double? load, RepsRangeDTO? reps, int? rpe});

  $RepsRangeDTOCopyWith<$Res>? get reps;
}

/// @nodoc
class _$ExerciseSetDTOCopyWithImpl<$Res>
    implements $ExerciseSetDTOCopyWith<$Res> {
  _$ExerciseSetDTOCopyWithImpl(this._value, this._then);

  final ExerciseSetDTO _value;
  // ignore: unused_field
  final $Res Function(ExerciseSetDTO) _then;

  @override
  $Res call({
    Object? load = freezed,
    Object? reps = freezed,
    Object? rpe = freezed,
  }) {
    return _then(_value.copyWith(
      load: load == freezed
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as double?,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsRangeDTO?,
      rpe: rpe == freezed
          ? _value.rpe
          : rpe // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $RepsRangeDTOCopyWith<$Res>? get reps {
    if (_value.reps == null) {
      return null;
    }

    return $RepsRangeDTOCopyWith<$Res>(_value.reps!, (value) {
      return _then(_value.copyWith(reps: value));
    });
  }
}

/// @nodoc
abstract class _$ExerciseSetDTOCopyWith<$Res>
    implements $ExerciseSetDTOCopyWith<$Res> {
  factory _$ExerciseSetDTOCopyWith(
          _ExerciseSetDTO value, $Res Function(_ExerciseSetDTO) then) =
      __$ExerciseSetDTOCopyWithImpl<$Res>;
  @override
  $Res call({double? load, RepsRangeDTO? reps, int? rpe});

  @override
  $RepsRangeDTOCopyWith<$Res>? get reps;
}

/// @nodoc
class __$ExerciseSetDTOCopyWithImpl<$Res>
    extends _$ExerciseSetDTOCopyWithImpl<$Res>
    implements _$ExerciseSetDTOCopyWith<$Res> {
  __$ExerciseSetDTOCopyWithImpl(
      _ExerciseSetDTO _value, $Res Function(_ExerciseSetDTO) _then)
      : super(_value, (v) => _then(v as _ExerciseSetDTO));

  @override
  _ExerciseSetDTO get _value => super._value as _ExerciseSetDTO;

  @override
  $Res call({
    Object? load = freezed,
    Object? reps = freezed,
    Object? rpe = freezed,
  }) {
    return _then(_ExerciseSetDTO(
      load: load == freezed
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as double?,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsRangeDTO?,
      rpe: rpe == freezed
          ? _value.rpe
          : rpe // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseSetDTO extends _ExerciseSetDTO {
  const _$_ExerciseSetDTO({this.load, this.reps, this.rpe}) : super._();

  factory _$_ExerciseSetDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseSetDTOFromJson(json);

  @override
  final double? load;
  @override
  final RepsRangeDTO? reps;
  @override
  final int? rpe;

  @override
  String toString() {
    return 'ExerciseSetDTO(load: $load, reps: $reps, rpe: $rpe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseSetDTO &&
            (identical(other.load, load) ||
                const DeepCollectionEquality().equals(other.load, load)) &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)) &&
            (identical(other.rpe, rpe) ||
                const DeepCollectionEquality().equals(other.rpe, rpe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(load) ^
      const DeepCollectionEquality().hash(reps) ^
      const DeepCollectionEquality().hash(rpe);

  @JsonKey(ignore: true)
  @override
  _$ExerciseSetDTOCopyWith<_ExerciseSetDTO> get copyWith =>
      __$ExerciseSetDTOCopyWithImpl<_ExerciseSetDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseSetDTOToJson(this);
  }
}

abstract class _ExerciseSetDTO extends ExerciseSetDTO {
  const factory _ExerciseSetDTO({double? load, RepsRangeDTO? reps, int? rpe}) =
      _$_ExerciseSetDTO;
  const _ExerciseSetDTO._() : super._();

  factory _ExerciseSetDTO.fromJson(Map<String, dynamic> json) =
      _$_ExerciseSetDTO.fromJson;

  @override
  double? get load => throw _privateConstructorUsedError;
  @override
  RepsRangeDTO? get reps => throw _privateConstructorUsedError;
  @override
  int? get rpe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseSetDTOCopyWith<_ExerciseSetDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
