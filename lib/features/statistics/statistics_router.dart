import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:squeezed_app/features/statistics/statistics_page.dart';

const statisticsTab = AutoRoute(
  name: 'StatisticsTab',
  page: EmptyRouterPage,
  children: [
    AutoRoute(page: StatisticsPage, initial: true),
  ],
);
