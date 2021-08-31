import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:squeezed_app/features/auth/core/errors/auth_failure.dart';
import 'package:squeezed_app/features/auth/data/models/sign_in_model.dart';
import 'package:squeezed_app/features/auth/data/models/register_model.dart';
import 'package:squeezed_app/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;

  const AuthRepositoryImpl(this._firebaseAuth);

  @override
  Future<void> createAccountWithEmailAndPassword(RegisterModel registerModel) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: registerModel.email, password: registerModel.password);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'weak-password') {
        throw AuthFailure.weakPassword();
      }
      throw AuthFailure(e.toString());
    } catch (e) {
      print(e);
      throw AuthFailure(e.toString());
    }
  }

  @override
  Future<void> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Stream<bool> isUserAuthenticated() {
    // TODO: implement isUserAuthenticated
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithEmailAndPassword(SignInModel signInModel) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
