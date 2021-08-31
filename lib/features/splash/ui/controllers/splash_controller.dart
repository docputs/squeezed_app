import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/shared/controllers/auth_controller.dart';

part 'splash_controller.g.dart';

@lazySingleton
class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final AuthController _authController;

  _SplashControllerBase(this._authController);

  Future<void> initialize() async {
    _authController.calculateInitialNavigation();
  }
}
