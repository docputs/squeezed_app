import 'package:auto_route/annotations.dart';
import 'package:squeezed_app/android_app.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: HomePage, initial: true),
])
class $AppRouter {}
