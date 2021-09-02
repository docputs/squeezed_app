import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/auth/domain/usecases/sign_in_user.dart';
import 'package:squeezed_app/features/auth/ui/sign_in/view_models/sign_in_view_model.dart';
import 'package:squeezed_app/shared/base/base_store.dart';

part 'sign_in_controller.g.dart';

@lazySingleton
class SignInController = _SignInControllerBase with _$SignInController;

abstract class _SignInControllerBase extends BaseStore with Store {
  final SignInUser _signInUser;
  final AppRouter _appRouter;

  _SignInControllerBase(this._signInUser, this._appRouter);

  @observable
  SignInViewModel signInModel = SignInViewModel.empty();

  @action
  void changeEmail(String input) => signInModel = signInModel.copyWith(email: input);

  @action
  void changePassword(String input) => signInModel = signInModel.copyWith(password: input);

  @computed
  bool get isFormValid => signInModel.isValid();

  Future<void> submit() async {
    return makeAsyncRequest(() => _signInUser(email: signInModel.email, password: signInModel.password));
  }

  void pushSignUpPage() {
    _appRouter.push(SignUpPageRoute());
  }
}
