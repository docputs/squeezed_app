import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/shared/res/messages.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure(String message) = _AuthFailure;

  factory AuthFailure.operationNotAllowed() => const AuthFailure(Messages.operationNotAllowed);
  factory AuthFailure.invalidEmailAddress() => const AuthFailure(Messages.invalidEmailAddress);
  factory AuthFailure.emailAlreadyInUse() => const AuthFailure(Messages.emailAlreadyInUse);
  factory AuthFailure.weakPassword() => const AuthFailure(Messages.weakPassword);
  factory AuthFailure.serverFailure() => const AuthFailure(Messages.serverFailure);
  factory AuthFailure.unknownFailure() => const AuthFailure(Messages.unknownError);
}
