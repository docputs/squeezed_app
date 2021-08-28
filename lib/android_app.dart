import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  final _appRouter = AutoRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: AutoRouterDelegate(_appRouter),
    );
  }
}
