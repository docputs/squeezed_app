import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/shared/utils/validators.dart';

part 'sign_in_view_model.freezed.dart';

@freezed
class SignInViewModel with _$SignInViewModel {
  const SignInViewModel._();

  const factory SignInViewModel({
    required String email,
    required String password,
  }) = _SignInViewModel;

  factory SignInViewModel.empty() => const SignInViewModel(
        email: '',
        password: '',
      );

  bool isValid() {
    return Validators.isValidEmailAddress(email) && Validators.isValidPassword(password);
  }
}
