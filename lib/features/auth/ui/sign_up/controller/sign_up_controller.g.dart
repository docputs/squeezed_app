// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpController on _SignUpControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignUpControllerBase.isFormValid'))
          .value;

  final _$signUpModelAtom = Atom(name: '_SignUpControllerBase.signUpModel');

  @override
  SignUpViewModel get signUpModel {
    _$signUpModelAtom.reportRead();
    return super.signUpModel;
  }

  @override
  set signUpModel(SignUpViewModel value) {
    _$signUpModelAtom.reportWrite(value, super.signUpModel, () {
      super.signUpModel = value;
    });
  }

  final _$_SignUpControllerBaseActionController =
      ActionController(name: '_SignUpControllerBase');

  @override
  void changeEmail(String input) {
    final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
        name: '_SignUpControllerBase.changeEmail');
    try {
      return super.changeEmail(input);
    } finally {
      _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String input) {
    final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
        name: '_SignUpControllerBase.changePassword');
    try {
      return super.changePassword(input);
    } finally {
      _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeConfirmPassword(String input) {
    final _$actionInfo = _$_SignUpControllerBaseActionController.startAction(
        name: '_SignUpControllerBase.changeConfirmPassword');
    try {
      return super.changeConfirmPassword(input);
    } finally {
      _$_SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
signUpModel: ${signUpModel},
isFormValid: ${isFormValid}
    ''';
  }
}
