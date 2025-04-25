import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    if (appMenuItems.isEmpty) {
      return const Center(child: Text('No menu items available'));
    }

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({required this.menuItem});

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: const Icon(Icons.chevron_right_outlined),
    );
  }
}
