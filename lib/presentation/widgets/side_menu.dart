import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        NavigationDrawerDestination(icon: Icon(Icons.add), label: Text('Add')),
        NavigationDrawerDestination(
          icon: Icon(Icons.remove),
          label: Text('Remove'),
        ),
      ],
    );
  }
}
