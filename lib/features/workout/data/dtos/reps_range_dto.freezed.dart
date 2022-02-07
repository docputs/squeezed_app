// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reps_range_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepsRangeDTO _$RepsRangeDTOFromJson(Map<String, dynamic> json) {
  return _RepsRangeDTO.fromJson(json);
}

/// @nodoc
class _$RepsRangeDTOTearOff {
  const _$RepsRangeDTOTearOff();

  _RepsRangeDTO call(int min, int max) {
    return _RepsRangeDTO(
      min,
      max,
    );
  }

  RepsRangeDTO fromJson(Map<String, Object> json) {
    return RepsRangeDTO.fromJson(json);
  }
}

/// @nodoc
const $RepsRangeDTO = _$RepsRangeDTOTearOff();

/// @nodoc
mixin _$RepsRangeDTO {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepsRangeDTOCopyWith<RepsRangeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepsRangeDTOCopyWith<$Res> {
  factory $RepsRangeDTOCopyWith(
          RepsRangeDTO value, $Res Function(RepsRangeDTO) then) =
      _$RepsRangeDTOCopyWithImpl<$Res>;
  $Res call({int min, int max});
}

/// @nodoc
class _$RepsRangeDTOCopyWithImpl<$Res> implements $RepsRangeDTOCopyWith<$Res> {
  _$RepsRangeDTOCopyWithImpl(this._value, this._then);

  final RepsRangeDTO _value;
  // ignore: unused_field
  final $Res Function(RepsRangeDTO) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RepsRangeDTOCopyWith<$Res>
    implements $RepsRangeDTOCopyWith<$Res> {
  factory _$RepsRangeDTOCopyWith(
          _RepsRangeDTO value, $Res Function(_RepsRangeDTO) then) =
      __$RepsRangeDTOCopyWithImpl<$Res>;
  @override
  $Res call({int min, int max});
}

/// @nodoc
class __$RepsRangeDTOCopyWithImpl<$Res> extends _$RepsRangeDTOCopyWithImpl<$Res>
    implements _$RepsRangeDTOCopyWith<$Res> {
  __$RepsRangeDTOCopyWithImpl(
      _RepsRangeDTO _value, $Res Function(_RepsRangeDTO) _then)
      : super(_value, (v) => _then(v as _RepsRangeDTO));

  @override
  _RepsRangeDTO get _value => super._value as _RepsRangeDTO;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_RepsRangeDTO(
      min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepsRangeDTO extends _RepsRangeDTO {
  const _$_RepsRangeDTO(this.min, this.max) : super._();

  factory _$_RepsRangeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RepsRangeDTOFromJson(json);

  @override
  final int min;
  @override
  final int max;

  @override
  String toString() {
    return 'RepsRangeDTO(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepsRangeDTO &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  _$RepsRangeDTOCopyWith<_RepsRangeDTO> get copyWith =>
      __$RepsRangeDTOCopyWithImpl<_RepsRangeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepsRangeDTOToJson(this);
  }
}

abstract class _RepsRangeDTO extends RepsRangeDTO {
  const factory _RepsRangeDTO(int min, int max) = _$_RepsRangeDTO;
  const _RepsRangeDTO._() : super._();

  factory _RepsRangeDTO.fromJson(Map<String, dynamic> json) =
      _$_RepsRangeDTO.fromJson;

  @override
  int get min => throw _privateConstructorUsedError;
  @override
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepsRangeDTOCopyWith<_RepsRangeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
