import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hello SnackBar'),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar and Dialog')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: const [
                    Text(
                      'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                );
              },
              child: const Text('Licencia usadas'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show SnackBar'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Hello SnackBar'),
              action: SnackBarAction(
                label: 'Close',
                onPressed: () => {showCustomSnackbar(context)},
              ),
            ),
          );
        },
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
