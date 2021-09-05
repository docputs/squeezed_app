import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:squeezed_app/features/settings/settings_page.dart';

const settingsTab = AutoRoute(
  name: 'SettingsTab',
  page: EmptyRouterPage,
  children: [
    AutoRoute(page: SettingsPage, initial: true),
  ],
);
