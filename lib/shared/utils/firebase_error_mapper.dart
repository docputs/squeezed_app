import 'package:firebase_auth/firebase_auth.dart';
import 'package:squeezed_app/features/auth/core/errors/auth_failure.dart';

class FirebaseErrorMapper {
  static AuthFailure mapFirebaseAuthException(FirebaseAuthException exception) {
    if (exception.code == 'weak-password') {
      return AuthFailure.weakPassword();
    } else if (exception.code == 'email-already-in-use') {
      return AuthFailure.emailAlreadyInUse();
    } else if (exception.code == 'invalid-email') {
      return AuthFailure.invalidEmailAddress();
    } else if (exception.code == 'operation-not-allowed') {
      return AuthFailure.operationNotAllowed();
    } else if (exception.code == 'user-not-found') {
      return AuthFailure.userNotFound();
    }
    return AuthFailure.serverFailure();
  }
}
