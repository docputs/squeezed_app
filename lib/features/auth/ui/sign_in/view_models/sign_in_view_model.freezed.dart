// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInViewModelTearOff {
  const _$SignInViewModelTearOff();

  _SignInViewModel call({required String email, required String password}) {
    return _SignInViewModel(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $SignInViewModel = _$SignInViewModelTearOff();

/// @nodoc
mixin _$SignInViewModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInViewModelCopyWith<SignInViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInViewModelCopyWith<$Res> {
  factory $SignInViewModelCopyWith(
          SignInViewModel value, $Res Function(SignInViewModel) then) =
      _$SignInViewModelCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInViewModelCopyWithImpl<$Res>
    implements $SignInViewModelCopyWith<$Res> {
  _$SignInViewModelCopyWithImpl(this._value, this._then);

  final SignInViewModel _value;
  // ignore: unused_field
  final $Res Function(SignInViewModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInViewModelCopyWith<$Res>
    implements $SignInViewModelCopyWith<$Res> {
  factory _$SignInViewModelCopyWith(
          _SignInViewModel value, $Res Function(_SignInViewModel) then) =
      __$SignInViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInViewModelCopyWithImpl<$Res>
    extends _$SignInViewModelCopyWithImpl<$Res>
    implements _$SignInViewModelCopyWith<$Res> {
  __$SignInViewModelCopyWithImpl(
      _SignInViewModel _value, $Res Function(_SignInViewModel) _then)
      : super(_value, (v) => _then(v as _SignInViewModel));

  @override
  _SignInViewModel get _value => super._value as _SignInViewModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInViewModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInViewModel extends _SignInViewModel {
  const _$_SignInViewModel({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInViewModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInViewModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInViewModelCopyWith<_SignInViewModel> get copyWith =>
      __$SignInViewModelCopyWithImpl<_SignInViewModel>(this, _$identity);
}

abstract class _SignInViewModel extends SignInViewModel {
  const factory _SignInViewModel(
      {required String email, required String password}) = _$_SignInViewModel;
  const _SignInViewModel._() : super._();

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInViewModelCopyWith<_SignInViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
