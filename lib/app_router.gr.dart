// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'features/auth/ui/sign_in/pages/sign_in_page.dart' as _i4;
import 'features/auth/ui/sign_up/pages/sign_up_page.dart' as _i5;
import 'widgets/bottom_navigation_manager.dart' as _i6;
import 'features/home/ui/home_page.dart' as _i7;
import 'features/settings/settings_page.dart' as _i10;
import 'features/splash/ui/splash_page.dart' as _i3;
import 'features/statistics/statistics_page.dart' as _i9;
import 'features/workout/workout_page.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SplashPageRouteArgs>(
              orElse: () => const SplashPageRouteArgs());
          return _i3.SplashPage(key: args.key);
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignInPageRouteArgs>(
              orElse: () => const SignInPageRouteArgs());
          return _i4.SignInPage(key: args.key);
        }),
    SignUpPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignUpPageRouteArgs>(
              orElse: () => const SignUpPageRouteArgs());
          return _i5.SignUpPage(key: args.key);
        }),
    BottomNavigationManagerRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return const _i6.BottomNavigationManager();
            }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HomePage();
        }),
    WorkoutPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.WorkoutPage();
        }),
    StatisticsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.StatisticsPage();
        }),
    SettingsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.SettingsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(BottomNavigationManagerRoute.name,
            path: '/bottom-navigation-manager',
            children: [
              _i1.RouteConfig(HomePageRoute.name, path: ''),
              _i1.RouteConfig(WorkoutPageRoute.name, path: 'workout-page'),
              _i1.RouteConfig(StatisticsPageRoute.name,
                  path: 'statistics-page'),
              _i1.RouteConfig(SettingsPageRoute.name, path: 'settings-page')
            ])
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo<SplashPageRouteArgs> {
  SplashPageRoute({_i2.Key? key})
      : super(name, path: '/', args: SplashPageRouteArgs(key: key));

  static const String name = 'SplashPageRoute';
}

class SplashPageRouteArgs {
  const SplashPageRouteArgs({this.key});

  final _i2.Key? key;
}

class SignInPageRoute extends _i1.PageRouteInfo<SignInPageRouteArgs> {
  SignInPageRoute({_i2.Key? key})
      : super(name, path: '/sign-in-page', args: SignInPageRouteArgs(key: key));

  static const String name = 'SignInPageRoute';
}

class SignInPageRouteArgs {
  const SignInPageRouteArgs({this.key});

  final _i2.Key? key;
}

class SignUpPageRoute extends _i1.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i2.Key? key})
      : super(name, path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i2.Key? key;
}

class BottomNavigationManagerRoute extends _i1.PageRouteInfo {
  const BottomNavigationManagerRoute({List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/bottom-navigation-manager', initialChildren: children);

  static const String name = 'BottomNavigationManagerRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '');

  static const String name = 'HomePageRoute';
}

class WorkoutPageRoute extends _i1.PageRouteInfo {
  const WorkoutPageRoute() : super(name, path: 'workout-page');

  static const String name = 'WorkoutPageRoute';
}

class StatisticsPageRoute extends _i1.PageRouteInfo {
  const StatisticsPageRoute() : super(name, path: 'statistics-page');

  static const String name = 'StatisticsPageRoute';
}

class SettingsPageRoute extends _i1.PageRouteInfo {
  const SettingsPageRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsPageRoute';
}
