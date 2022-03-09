// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExercisePlanTearOff {
  const _$ExercisePlanTearOff();

  _ExercisePlan call(
      {required String id,
      required ExerciseDetails details,
      required List<ExerciseSet> plannedSets}) {
    return _ExercisePlan(
      id: id,
      details: details,
      plannedSets: plannedSets,
    );
  }
}

/// @nodoc
const $ExercisePlan = _$ExercisePlanTearOff();

/// @nodoc
mixin _$ExercisePlan {
  String get id => throw _privateConstructorUsedError;
  ExerciseDetails get details => throw _privateConstructorUsedError;
  List<ExerciseSet> get plannedSets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExercisePlanCopyWith<ExercisePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisePlanCopyWith<$Res> {
  factory $ExercisePlanCopyWith(
          ExercisePlan value, $Res Function(ExercisePlan) then) =
      _$ExercisePlanCopyWithImpl<$Res>;
  $Res call(
      {String id, ExerciseDetails details, List<ExerciseSet> plannedSets});

  $ExerciseDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$ExercisePlanCopyWithImpl<$Res> implements $ExercisePlanCopyWith<$Res> {
  _$ExercisePlanCopyWithImpl(this._value, this._then);

  final ExercisePlan _value;
  // ignore: unused_field
  final $Res Function(ExercisePlan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? plannedSets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ExerciseDetails,
      plannedSets: plannedSets == freezed
          ? _value.plannedSets
          : plannedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
    ));
  }

  @override
  $ExerciseDetailsCopyWith<$Res> get details {
    return $ExerciseDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$ExercisePlanCopyWith<$Res>
    implements $ExercisePlanCopyWith<$Res> {
  factory _$ExercisePlanCopyWith(
          _ExercisePlan value, $Res Function(_ExercisePlan) then) =
      __$ExercisePlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, ExerciseDetails details, List<ExerciseSet> plannedSets});

  @override
  $ExerciseDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$ExercisePlanCopyWithImpl<$Res> extends _$ExercisePlanCopyWithImpl<$Res>
    implements _$ExercisePlanCopyWith<$Res> {
  __$ExercisePlanCopyWithImpl(
      _ExercisePlan _value, $Res Function(_ExercisePlan) _then)
      : super(_value, (v) => _then(v as _ExercisePlan));

  @override
  _ExercisePlan get _value => super._value as _ExercisePlan;

  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? plannedSets = freezed,
  }) {
    return _then(_ExercisePlan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ExerciseDetails,
      plannedSets: plannedSets == freezed
          ? _value.plannedSets
          : plannedSets // ignore: cast_nullable_to_non_nullable
              as List<ExerciseSet>,
    ));
  }
}

/// @nodoc

class _$_ExercisePlan extends _ExercisePlan {
  const _$_ExercisePlan(
      {required this.id, required this.details, required this.plannedSets})
      : super._();

  @override
  final String id;
  @override
  final ExerciseDetails details;
  @override
  final List<ExerciseSet> plannedSets;

  @override
  String toString() {
    return 'ExercisePlan(id: $id, details: $details, plannedSets: $plannedSets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExercisePlan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.plannedSets, plannedSets) ||
                const DeepCollectionEquality()
                    .equals(other.plannedSets, plannedSets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(plannedSets);

  @JsonKey(ignore: true)
  @override
  _$ExercisePlanCopyWith<_ExercisePlan> get copyWith =>
      __$ExercisePlanCopyWithImpl<_ExercisePlan>(this, _$identity);
}

abstract class _ExercisePlan extends ExercisePlan {
  const factory _ExercisePlan(
      {required String id,
      required ExerciseDetails details,
      required List<ExerciseSet> plannedSets}) = _$_ExercisePlan;
  const _ExercisePlan._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  ExerciseDetails get details => throw _privateConstructorUsedError;
  @override
  List<ExerciseSet> get plannedSets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExercisePlanCopyWith<_ExercisePlan> get copyWith =>
      throw _privateConstructorUsedError;
}
