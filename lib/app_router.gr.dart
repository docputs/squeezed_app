// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'features/auth/ui/sign_in/pages/sign_in_page.dart' as _i4;
import 'features/auth/ui/sign_up/pages/sign_up_page.dart' as _i5;
import 'features/home/ui/home_page.dart' as _i6;
import 'features/splash/ui/splash_page.dart' as _i3;

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
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HomePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page')
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

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}
