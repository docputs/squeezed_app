import 'package:auto_route/annotations.dart';
import 'package:squeezed_app/features/auth/ui/sign_in/pages/sign_in_page.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/pages/sign_up_page.dart';
import 'package:squeezed_app/features/home/ui/home_page.dart';
import 'package:squeezed_app/features/splash/ui/splash_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignInPage),
  AutoRoute(page: SignUpPage),
  AutoRoute(page: HomePage),
])
class $AppRouter {}
