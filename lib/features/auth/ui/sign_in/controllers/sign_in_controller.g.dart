// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInController on _SignInControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignInControllerBase.isFormValid'))
          .value;

  final _$signInModelAtom = Atom(name: '_SignInControllerBase.signInModel');

  @override
  SignInViewModel get signInModel {
    _$signInModelAtom.reportRead();
    return super.signInModel;
  }

  @override
  set signInModel(SignInViewModel value) {
    _$signInModelAtom.reportWrite(value, super.signInModel, () {
      super.signInModel = value;
    });
  }

  final _$_SignInControllerBaseActionController =
      ActionController(name: '_SignInControllerBase');

  @override
  void changeEmail(String input) {
    final _$actionInfo = _$_SignInControllerBaseActionController.startAction(
        name: '_SignInControllerBase.changeEmail');
    try {
      return super.changeEmail(input);
    } finally {
      _$_SignInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String input) {
    final _$actionInfo = _$_SignInControllerBaseActionController.startAction(
        name: '_SignInControllerBase.changePassword');
    try {
      return super.changePassword(input);
    } finally {
      _$_SignInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
signInModel: ${signInModel},
isFormValid: ${isFormValid}
    ''';
  }
}
