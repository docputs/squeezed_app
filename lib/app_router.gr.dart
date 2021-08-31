// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i2;

import 'features/auth/ui/sign_up/pages/sign_up_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SignUpPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignUpPageRouteArgs>(
              orElse: () => const SignUpPageRouteArgs());
          return _i3.SignUpPage(key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [_i1.RouteConfig(SignUpPageRoute.name, path: '/')];
}

class SignUpPageRoute extends _i1.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i4.Key? key})
      : super(name, path: '/', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i4.Key? key;
}
