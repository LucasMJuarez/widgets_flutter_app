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
