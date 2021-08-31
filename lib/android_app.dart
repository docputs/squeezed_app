import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/app_router.gr.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/shared/res/app_theme.dart';

class AndroidApp extends StatelessWidget {
  final appRouter = AppContainer.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Squeezed',
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(appRouter),
      theme: AppTheme(context).generate(),
    );
  }
}
