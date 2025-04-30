import 'package:flutter/material.dart';

class InfiniteScroolScreen extends StatelessWidget {
  static const String name = 'infinite_screen';

  const InfiniteScroolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinite Scroll and Pull to Refresh')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/id/3/500/300'),
          );
        },
      ),
    );
  }
}
