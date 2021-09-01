import 'package:auto_route/annotations.dart';
import 'package:squeezed_app/features/auth/ui/sign_in/pages/sign_in_page.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/pages/sign_up_page.dart';
import 'package:squeezed_app/widgets/bottom_navigation_manager.dart';
import 'package:squeezed_app/features/home/ui/home_page.dart';
import 'package:squeezed_app/features/settings/settings_page.dart';
import 'package:squeezed_app/features/splash/ui/splash_page.dart';
import 'package:squeezed_app/features/statistics/statistics_page.dart';
import 'package:squeezed_app/features/workout/workout_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignInPage),
  AutoRoute(page: SignUpPage),
  AutoRoute(
    page: BottomNavigationManager,
    children: [
      AutoRoute(page: HomePage, initial: true),
      AutoRoute(page: WorkoutPage),
      AutoRoute(page: StatisticsPage),
      AutoRoute(page: SettingsPage),
    ],
  ),
])
class $AppRouter {}
