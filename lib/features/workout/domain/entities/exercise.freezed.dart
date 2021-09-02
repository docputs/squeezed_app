// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {required String id,
      required String name,
      required String targetMuscle,
      String? description,
      List<String>? synergistMuscles,
      String? imageUrl,
      String? videoUrl}) {
    return _Exercise(
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
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get targetMuscle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get synergistMuscles => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
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
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

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
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
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
class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

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
    return _then(_Exercise(
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

class _$_Exercise implements _Exercise {
  const _$_Exercise(
      {required this.id,
      required this.name,
      required this.targetMuscle,
      this.description,
      this.synergistMuscles,
      this.imageUrl,
      this.videoUrl});

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
    return 'Exercise(id: $id, name: $name, targetMuscle: $targetMuscle, description: $description, synergistMuscles: $synergistMuscles, imageUrl: $imageUrl, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
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
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required String id,
      required String name,
      required String targetMuscle,
      String? description,
      List<String>? synergistMuscles,
      String? imageUrl,
      String? videoUrl}) = _$_Exercise;

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
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
