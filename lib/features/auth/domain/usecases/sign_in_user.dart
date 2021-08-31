import 'package:injectable/injectable.dart';
import 'package:squeezed_app/features/auth/data/models/sign_in_model.dart';

import '../repositories/auth_repository.dart';

@lazySingleton
class SignInUser {
  final AuthRepository _repository;

  const SignInUser(this._repository);

  @override
  Future<void> call({required String email, required String password}) {
    final signInModel = SignInModel(email: email, password: password);
    return _repository.signInWithEmailAndPassword(signInModel);
  }
}
