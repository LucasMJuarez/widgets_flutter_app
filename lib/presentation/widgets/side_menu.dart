import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, hasNotch ? 10 : 16, 0, 16),
          child: Text('MENU'),
        ),

        ...appMenuItems
            .sublist(0, 3)
            .map(
              (e) => NavigationDrawerDestination(
                icon: Icon(e.icon),
                label: Text(e.title),
                selectedIcon: Icon(e.icon, color: Colors.blue),
              ),
            ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),

        ...appMenuItems
            .sublist(3)
            .map(
              (e) => NavigationDrawerDestination(
                icon: Icon(e.icon),
                label: Text(e.title),
                selectedIcon: Icon(e.icon, color: Colors.blue),
              ),
            ),
      ],
    );
  }
}
