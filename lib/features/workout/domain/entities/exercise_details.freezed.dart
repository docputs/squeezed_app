// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exercise_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseDetailsTearOff {
  const _$ExerciseDetailsTearOff();

  _ExerciseDetails call(
      {required String id,
      required String name,
      required String targetMuscle,
      String? description,
      List<String>? synergistMuscles,
      String? imageUrl,
      String? videoUrl}) {
    return _ExerciseDetails(
      id: id,
      name: name,
      targetMuscle: targetMuscle,
      description: description,
      synergistMuscles: synergistMuscles,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
    );
  }
}

/// @nodoc
const $ExerciseDetails = _$ExerciseDetailsTearOff();

/// @nodoc
mixin _$ExerciseDetails {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get targetMuscle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get synergistMuscles => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseDetailsCopyWith<ExerciseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDetailsCopyWith<$Res> {
  factory $ExerciseDetailsCopyWith(
          ExerciseDetails value, $Res Function(ExerciseDetails) then) =
      _$ExerciseDetailsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String targetMuscle,
      String? description,
      List<String>? synergistMuscles,
      String? imageUrl,
      String? videoUrl});
}

/// @nodoc
class _$ExerciseDetailsCopyWithImpl<$Res>
    implements $ExerciseDetailsCopyWith<$Res> {
  _$ExerciseDetailsCopyWithImpl(this._value, this._then);

  final ExerciseDetails _value;
  // ignore: unused_field
  final $Res Function(ExerciseDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? targetMuscle = freezed,
    Object? description = freezed,
    Object? synergistMuscles = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetMuscle: targetMuscle == freezed
          ? _value.targetMuscle
          : targetMuscle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      synergistMuscles: synergistMuscles == freezed
          ? _value.synergistMuscles
          : synergistMuscles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseDetailsCopyWith<$Res>
    implements $ExerciseDetailsCopyWith<$Res> {
  factory _$ExerciseDetailsCopyWith(
          _ExerciseDetails value, $Res Function(_ExerciseDetails) then) =
      __$ExerciseDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String targetMuscle,
      String? description,
      List<String>? synergistMuscles,
      String? imageUrl,
      String? videoUrl});
}

/// @nodoc
class __$ExerciseDetailsCopyWithImpl<$Res>
    extends _$ExerciseDetailsCopyWithImpl<$Res>
    implements _$ExerciseDetailsCopyWith<$Res> {
  __$ExerciseDetailsCopyWithImpl(
      _ExerciseDetails _value, $Res Function(_ExerciseDetails) _then)
      : super(_value, (v) => _then(v as _ExerciseDetails));

  @override
  _ExerciseDetails get _value => super._value as _ExerciseDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? targetMuscle = freezed,
    Object? description = freezed,
    Object? synergistMuscles = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_ExerciseDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetMuscle: targetMuscle == freezed
          ? _value.targetMuscle
          : targetMuscle // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      synergistMuscles: synergistMuscles == freezed
          ? _value.synergistMuscles
          : synergistMuscles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ExerciseDetails extends _ExerciseDetails {
  const _$_ExerciseDetails(
      {required this.id,
      required this.name,
      required this.targetMuscle,
      this.description,
      this.synergistMuscles,
      this.imageUrl,
      this.videoUrl})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String targetMuscle;
  @override
  final String? description;
  @override
  final List<String>? synergistMuscles;
  @override
  final String? imageUrl;
  @override
  final String? videoUrl;

  @override
  String toString() {
    return 'ExerciseDetails(id: $id, name: $name, targetMuscle: $targetMuscle, description: $description, synergistMuscles: $synergistMuscles, imageUrl: $imageUrl, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.targetMuscle, targetMuscle) ||
                const DeepCollectionEquality()
                    .equals(other.targetMuscle, targetMuscle)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.synergistMuscles, synergistMuscles) ||
                const DeepCollectionEquality()
                    .equals(other.synergistMuscles, synergistMuscles)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(targetMuscle) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(synergistMuscles) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(videoUrl);

  @JsonKey(ignore: true)
  @override
  _$ExerciseDetailsCopyWith<_ExerciseDetails> get copyWith =>
      __$ExerciseDetailsCopyWithImpl<_ExerciseDetails>(this, _$identity);
}

abstract class _ExerciseDetails extends ExerciseDetails {
  const factory _ExerciseDetails(
      {required String id,
      required String name,
      required String targetMuscle,
      String? description,
      List<String>? synergistMuscles,
      String? imageUrl,
      String? videoUrl}) = _$_ExerciseDetails;
  const _ExerciseDetails._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get targetMuscle => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<String>? get synergistMuscles => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseDetailsCopyWith<_ExerciseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
