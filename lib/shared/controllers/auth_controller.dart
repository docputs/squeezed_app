import 'package:injectable/injectable.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class AuthController {
  final AuthRepository _authRepository;
  final AppRouter _router;

  const AuthController(this._authRepository, this._router);

  void calculateInitialNavigation() {
    _authRepository.isUserAuthenticated().listen((isAuthenticated) {
      if (isAuthenticated) {
        _router.replaceAll([const BottomNavigationManagerRoute()]);
      } else {
        _router.replaceAll([SignInPageRoute()]);
      }
    });
  }
}
