// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exercise_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExercisePlanDTO _$ExercisePlanDTOFromJson(Map<String, dynamic> json) {
  return _ExercisePlanDTO.fromJson(json);
}

/// @nodoc
class _$ExercisePlanDTOTearOff {
  const _$ExercisePlanDTOTearOff();

  _ExercisePlanDTO call(
      {required String id,
      required String exerciseDetailsId,
      required List<ExerciseSetDTO> plannedSets}) {
    return _ExercisePlanDTO(
      id: id,
      exerciseDetailsId: exerciseDetailsId,
      plannedSets: plannedSets,
    );
  }

  ExercisePlanDTO fromJson(Map<String, Object> json) {
    return ExercisePlanDTO.fromJson(json);
  }
}

/// @nodoc
const $ExercisePlanDTO = _$ExercisePlanDTOTearOff();

/// @nodoc
mixin _$ExercisePlanDTO {
  String get id => throw _privateConstructorUsedError;
  String get exerciseDetailsId => throw _privateConstructorUsedError;
  List<ExerciseSetDTO> get plannedSets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExercisePlanDTOCopyWith<ExercisePlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisePlanDTOCopyWith<$Res> {
  factory $ExercisePlanDTOCopyWith(
          ExercisePlanDTO value, $Res Function(ExercisePlanDTO) then) =
      _$ExercisePlanDTOCopyWithImpl<$Res>;
  $Res call(
      {String id, String exerciseDetailsId, List<ExerciseSetDTO> plannedSets});
}

/// @nodoc
class _$ExercisePlanDTOCopyWithImpl<$Res>
    implements $ExercisePlanDTOCopyWith<$Res> {
  _$ExercisePlanDTOCopyWithImpl(this._value, this._then);

  final ExercisePlanDTO _value;
  // ignore: unused_field
  final $Res Function(ExercisePlanDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? exerciseDetailsId = freezed,
    Object? plannedSets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseDetailsId: exerciseDetailsId == freezed
          ? _value.exerciseDetailsId
          : exerciseDetailsId // ignore: cast_nullable_to_non_nullable
              as String,
      plannedSets: plannedSets == freezed
          ? _value.plannedSets
          : plannedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetDTO>,
    ));
  }
}

/// @nodoc
abstract class _$ExercisePlanDTOCopyWith<$Res>
    implements $ExercisePlanDTOCopyWith<$Res> {
  factory _$ExercisePlanDTOCopyWith(
          _ExercisePlanDTO value, $Res Function(_ExercisePlanDTO) then) =
      __$ExercisePlanDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String exerciseDetailsId, List<ExerciseSetDTO> plannedSets});
}

/// @nodoc
class __$ExercisePlanDTOCopyWithImpl<$Res>
    extends _$ExercisePlanDTOCopyWithImpl<$Res>
    implements _$ExercisePlanDTOCopyWith<$Res> {
  __$ExercisePlanDTOCopyWithImpl(
      _ExercisePlanDTO _value, $Res Function(_ExercisePlanDTO) _then)
      : super(_value, (v) => _then(v as _ExercisePlanDTO));

  @override
  _ExercisePlanDTO get _value => super._value as _ExercisePlanDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? exerciseDetailsId = freezed,
    Object? plannedSets = freezed,
  }) {
    return _then(_ExercisePlanDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseDetailsId: exerciseDetailsId == freezed
          ? _value.exerciseDetailsId
          : exerciseDetailsId // ignore: cast_nullable_to_non_nullable
              as String,
      plannedSets: plannedSets == freezed
          ? _value.plannedSets
          : plannedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSetDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExercisePlanDTO implements _ExercisePlanDTO {
  const _$_ExercisePlanDTO(
      {required this.id,
      required this.exerciseDetailsId,
      required this.plannedSets});

  factory _$_ExercisePlanDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ExercisePlanDTOFromJson(json);

  @override
  final String id;
  @override
  final String exerciseDetailsId;
  @override
  final List<ExerciseSetDTO> plannedSets;

  @override
  String toString() {
    return 'ExercisePlanDTO(id: $id, exerciseDetailsId: $exerciseDetailsId, plannedSets: $plannedSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExercisePlanDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.exerciseDetailsId, exerciseDetailsId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseDetailsId, exerciseDetailsId)) &&
            (identical(other.plannedSets, plannedSets) ||
                const DeepCollectionEquality()
                    .equals(other.plannedSets, plannedSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(exerciseDetailsId) ^
      const DeepCollectionEquality().hash(plannedSets);

  @JsonKey(ignore: true)
  @override
  _$ExercisePlanDTOCopyWith<_ExercisePlanDTO> get copyWith =>
      __$ExercisePlanDTOCopyWithImpl<_ExercisePlanDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExercisePlanDTOToJson(this);
  }
}

abstract class _ExercisePlanDTO implements ExercisePlanDTO {
  const factory _ExercisePlanDTO(
      {required String id,
      required String exerciseDetailsId,
      required List<ExerciseSetDTO> plannedSets}) = _$_ExercisePlanDTO;

  factory _ExercisePlanDTO.fromJson(Map<String, dynamic> json) =
      _$_ExercisePlanDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get exerciseDetailsId => throw _privateConstructorUsedError;
  @override
  List<ExerciseSetDTO> get plannedSets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExercisePlanDTOCopyWith<_ExercisePlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
