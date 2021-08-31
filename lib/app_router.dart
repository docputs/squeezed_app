import 'package:auto_route/annotations.dart';
import 'package:squeezed_app/features/auth/ui/sign_in/pages/sign_in_page.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/pages/sign_up_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: SignInPage, initial: true),
  AutoRoute(page: SignUpPage),
])
class $AppRouter {}
