import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/app_router.gr.dart';

class NavigationLink {
  final String labelText;
  final IconData icon;
  final PageRouteInfo destination;

  const NavigationLink({
    required this.labelText,
    required this.icon,
    required this.destination,
  });
}

const bottomNavLinks = [
  NavigationLink(labelText: 'Home', icon: Icons.home, destination: HomePageRoute()),
  NavigationLink(labelText: 'Workout', icon: Icons.work, destination: WorkoutPageRoute()),
  NavigationLink(labelText: 'Statistics', icon: Icons.bar_chart, destination: StatisticsPageRoute()),
  NavigationLink(labelText: 'Settings', icon: Icons.settings, destination: SettingsPageRoute()),
];
