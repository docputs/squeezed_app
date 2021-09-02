import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/shared/utils/validators.dart';

part 'sign_up_view_model.freezed.dart';

@freezed
class SignUpViewModel with _$SignUpViewModel {
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
    return Validators.isValidEmailAddress(email) && Validators.isValidPassword(password) && confirmPassword == password;
  }
}
