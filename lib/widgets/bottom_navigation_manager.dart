import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/navigation_links.dart';

class BottomNavigationManager extends StatelessWidget {
  const BottomNavigationManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: bottomNavLinks.map((e) => e.destination).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: bottomNavLinks.map((e) => BottomNavigationBarItem(icon: Icon(e.icon), label: e.labelText)).toList(),
        );
      },
    );
  }
}
