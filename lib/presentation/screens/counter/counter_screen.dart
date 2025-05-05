import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter'),
            const SizedBox(height: 10),
            Text('0', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
