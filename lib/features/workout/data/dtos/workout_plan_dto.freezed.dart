// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'workout_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutPlanDTO _$WorkoutPlanDTOFromJson(Map<String, dynamic> json) {
  return _WorkoutPlanDTO.fromJson(json);
}

/// @nodoc
class _$WorkoutPlanDTOTearOff {
  const _$WorkoutPlanDTOTearOff();

  _WorkoutPlanDTO call(
      {@JsonKey(ignore: true) String? id,
      required String title,
      required Set<int> daysOfWeek,
      required List<ExercisePlanDTO> exercises,
      required DateTime creationTimestamp,
      required String? observations}) {
    return _WorkoutPlanDTO(
      id: id,
      title: title,
      daysOfWeek: daysOfWeek,
      exercises: exercises,
      creationTimestamp: creationTimestamp,
      observations: observations,
    );
  }

  WorkoutPlanDTO fromJson(Map<String, Object> json) {
    return WorkoutPlanDTO.fromJson(json);
  }
}

/// @nodoc
const $WorkoutPlanDTO = _$WorkoutPlanDTOTearOff();

/// @nodoc
mixin _$WorkoutPlanDTO {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Set<int> get daysOfWeek => throw _privateConstructorUsedError;
  List<ExercisePlanDTO> get exercises => throw _privateConstructorUsedError;
  DateTime get creationTimestamp => throw _privateConstructorUsedError;
  String? get observations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutPlanDTOCopyWith<WorkoutPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanDTOCopyWith<$Res> {
  factory $WorkoutPlanDTOCopyWith(
          WorkoutPlanDTO value, $Res Function(WorkoutPlanDTO) then) =
      _$WorkoutPlanDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String title,
      Set<int> daysOfWeek,
      List<ExercisePlanDTO> exercises,
      DateTime creationTimestamp,
      String? observations});
}

/// @nodoc
class _$WorkoutPlanDTOCopyWithImpl<$Res>
    implements $WorkoutPlanDTOCopyWith<$Res> {
  _$WorkoutPlanDTOCopyWithImpl(this._value, this._then);

  final WorkoutPlanDTO _value;
  // ignore: unused_field
  final $Res Function(WorkoutPlanDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? daysOfWeek = freezed,
    Object? exercises = freezed,
    Object? creationTimestamp = freezed,
    Object? observations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      daysOfWeek: daysOfWeek == freezed
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlanDTO>,
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutPlanDTOCopyWith<$Res>
    implements $WorkoutPlanDTOCopyWith<$Res> {
  factory _$WorkoutPlanDTOCopyWith(
          _WorkoutPlanDTO value, $Res Function(_WorkoutPlanDTO) then) =
      __$WorkoutPlanDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String title,
      Set<int> daysOfWeek,
      List<ExercisePlanDTO> exercises,
      DateTime creationTimestamp,
      String? observations});
}

/// @nodoc
class __$WorkoutPlanDTOCopyWithImpl<$Res>
    extends _$WorkoutPlanDTOCopyWithImpl<$Res>
    implements _$WorkoutPlanDTOCopyWith<$Res> {
  __$WorkoutPlanDTOCopyWithImpl(
      _WorkoutPlanDTO _value, $Res Function(_WorkoutPlanDTO) _then)
      : super(_value, (v) => _then(v as _WorkoutPlanDTO));

  @override
  _WorkoutPlanDTO get _value => super._value as _WorkoutPlanDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? daysOfWeek = freezed,
    Object? exercises = freezed,
    Object? creationTimestamp = freezed,
    Object? observations = freezed,
  }) {
    return _then(_WorkoutPlanDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      daysOfWeek: daysOfWeek == freezed
          ? _value.daysOfWeek
          : daysOfWeek // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExercisePlanDTO>,
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observations: observations == freezed
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutPlanDTO implements _WorkoutPlanDTO {
  const _$_WorkoutPlanDTO(
      {@JsonKey(ignore: true) this.id,
      required this.title,
      required this.daysOfWeek,
      required this.exercises,
      required this.creationTimestamp,
      required this.observations});

  factory _$_WorkoutPlanDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkoutPlanDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String title;
  @override
  final Set<int> daysOfWeek;
  @override
  final List<ExercisePlanDTO> exercises;
  @override
  final DateTime creationTimestamp;
  @override
  final String? observations;

  @override
  String toString() {
    return 'WorkoutPlanDTO(id: $id, title: $title, daysOfWeek: $daysOfWeek, exercises: $exercises, creationTimestamp: $creationTimestamp, observations: $observations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutPlanDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.daysOfWeek, daysOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfWeek, daysOfWeek)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.creationTimestamp, creationTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.creationTimestamp, creationTimestamp)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(daysOfWeek) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(creationTimestamp) ^
      const DeepCollectionEquality().hash(observations);

  @JsonKey(ignore: true)
  @override
  _$WorkoutPlanDTOCopyWith<_WorkoutPlanDTO> get copyWith =>
      __$WorkoutPlanDTOCopyWithImpl<_WorkoutPlanDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkoutPlanDTOToJson(this);
  }
}

abstract class _WorkoutPlanDTO implements WorkoutPlanDTO {
  const factory _WorkoutPlanDTO(
      {@JsonKey(ignore: true) String? id,
      required String title,
      required Set<int> daysOfWeek,
      required List<ExercisePlanDTO> exercises,
      required DateTime creationTimestamp,
      required String? observations}) = _$_WorkoutPlanDTO;

  factory _WorkoutPlanDTO.fromJson(Map<String, dynamic> json) =
      _$_WorkoutPlanDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Set<int> get daysOfWeek => throw _privateConstructorUsedError;
  @override
  List<ExercisePlanDTO> get exercises => throw _privateConstructorUsedError;
  @override
  DateTime get creationTimestamp => throw _privateConstructorUsedError;
  @override
  String? get observations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutPlanDTOCopyWith<_WorkoutPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
