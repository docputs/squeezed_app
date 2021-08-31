import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_view_model.freezed.dart';

@freezed
abstract class SignUpViewModel with _$SignUpViewModel {
  const SignUpViewModel._();

  const factory SignUpViewModel({
    required String email,
    required String password,
    required String confirmPassword,
  }) = _SignUpViewModel;

  factory SignUpViewModel.empty() => const SignUpViewModel(
        email: '',
        password: '',
        confirmPassword: '',
      );

  bool isValid() {
    return email.isNotEmpty && password.isNotEmpty && password.length >= 6 && confirmPassword == password;
  }
}
