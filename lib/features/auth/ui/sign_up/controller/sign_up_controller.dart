import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/auth/domain/usecases/sign_up_user.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/view_models/sign_up_view_model.dart';
import 'package:squeezed_app/shared/base/base_store.dart';

part 'sign_up_controller.g.dart';

@lazySingleton
class SignUpController = _SignUpControllerBase with _$SignUpController;

abstract class _SignUpControllerBase extends BaseStore with Store {
  final SignUpUser _signUpUser;

  _SignUpControllerBase(this._signUpUser);

  @observable
  SignUpViewModel signUpModel = SignUpViewModel.empty();

  @action
  void changeEmail(String input) => signUpModel = signUpModel.copyWith(email: input);

  @action
  void changePassword(String input) => signUpModel = signUpModel.copyWith(password: input);

  @action
  void changeConfirmPassword(String input) => signUpModel = signUpModel.copyWith(confirmPassword: input);

  @computed
  bool get isFormValid => signUpModel.isValid();

  Future<void> submit() async {
    return makeAsyncRequest(
      () => _signUpUser(
        email: signUpModel.email,
        password: signUpModel.password,
      ),
    );
  }
}
