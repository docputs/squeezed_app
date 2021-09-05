import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:squeezed_app/features/home/ui/home_page.dart';

const homeTab = AutoRoute(
  name: 'HomeTab',
  initial: true,
  page: EmptyRouterPage,
  children: [
    AutoRoute(page: HomePage, initial: true),
  ],
);
