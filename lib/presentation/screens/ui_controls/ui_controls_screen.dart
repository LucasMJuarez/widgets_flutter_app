import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'animate_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ui controls')),
      body: _UiControlView(),
    );
  }
}

class _UiControlView extends StatelessWidget {
  const _UiControlView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('developer mode'),
          subtitle: const Text('Activar modo desarrollador'),
          value: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
