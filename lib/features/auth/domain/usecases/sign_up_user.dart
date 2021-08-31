import 'package:injectable/injectable.dart';
import 'package:squeezed_app/features/auth/data/models/register_model.dart';
import 'package:squeezed_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class SignUpUser {
  final AuthRepository _repository;

  const SignUpUser(this._repository);

  Future<void> call({required String email, required String password}) {
    final registerModel = RegisterModel(email: email, password: password);
    return _repository.createAccountWithEmailAndPassword(registerModel);
  }
}
