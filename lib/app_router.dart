import 'package:auto_route/annotations.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/pages/sign_up_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: SignUpPage, initial: true),
])
class $AppRouter {}
