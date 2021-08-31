import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:squeezed_app/features/auth/core/errors/auth_failure.dart';
import 'package:squeezed_app/features/auth/data/models/sign_in_model.dart';
import 'package:squeezed_app/features/auth/data/models/register_model.dart';
import 'package:squeezed_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:squeezed_app/shared/utils/firebase_error_mapper.dart';

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
      throw FirebaseErrorMapper.mapFirebaseAuthException(e);
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
    return _firebaseAuth.userChanges().map((event) => event != null);
  }

  @override
  Future<void> signInWithEmailAndPassword(SignInModel signInModel) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: signInModel.email, password: signInModel.password);
    } on FirebaseAuthException catch (e) {
      print(e);
      throw FirebaseErrorMapper.mapFirebaseAuthException(e);
    } catch (e) {
      print(e);
      throw AuthFailure(e.toString());
    }
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
