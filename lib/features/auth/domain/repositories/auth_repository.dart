import '../../data/models/register_model.dart';
import '../../data/models/sign_in_model.dart';

abstract class AuthRepository {
  Future<void> createAccountWithEmailAndPassword(RegisterModel registerModel);
  Future<void> signInWithEmailAndPassword(SignInModel signInModel);
  Future<void> deleteAccount();
  Stream<bool> isUserAuthenticated();
  Future<void> signOut();
}
