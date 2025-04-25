import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop(); // Add your onPressed code here!
        },
        child: const Icon(Icons.chevron_left_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Wrap(
          spacing: 10.0,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text('Elevated with icon'),
            ),

            FilledButton(onPressed: () {}, child: const Text('Filled button')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessible_forward),
              label: const Text('Filled with icon'),
            ),

            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined button'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text('Outlined with icon'),
            ),

            TextButton(onPressed: () {}, child: const Text('Text button')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text('Text with icon'),
            ),

            //Todo: CUSTOM BUTTONS
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(colors.primary),
                iconColor: WidgetStateProperty.all(colors.onPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
