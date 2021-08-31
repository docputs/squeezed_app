import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/res/app_theme.dart';

class AndroidApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Squeezed',
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
      theme: AppTheme(context).generate(),
    );
  }
}
