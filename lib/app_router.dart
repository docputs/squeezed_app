import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:squeezed_app/features/auth/ui/sign_in/pages/sign_in_page.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/pages/sign_up_page.dart';
import 'package:squeezed_app/features/home/home_router.dart';
import 'package:squeezed_app/features/settings/settings_router.dart';
import 'package:squeezed_app/features/splash/ui/splash_page.dart';
import 'package:squeezed_app/features/statistics/statistics_router.dart';
import 'package:squeezed_app/features/workout/workout_router.dart';
import 'package:squeezed_app/widgets/bottom_navigation_manager.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(
      page: BottomNavigationManager,
      children: [
        homeTab,
        workoutTab,
        statisticsTab,
        settingsTab,
      ],
    ),
  ],
)
class $AppRouter {}
