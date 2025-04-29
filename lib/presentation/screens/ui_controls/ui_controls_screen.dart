import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui-controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ui controls')),
      body: _UiControlView(),
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

enum Transportation { car, plane, bus, submarine }

class _UiControlViewState extends State<_UiControlView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('developer mode'),
          subtitle: const Text('Activar modo desarrollador'),
          value: isDeveloperMode,
          onChanged:
              (value) => setState(() {
                isDeveloperMode = !isDeveloperMode;
              }),
        ),

        RadioListTile(
          title: const Text('By Car'),
          subtitle: const Text('Viajar en coche'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged:
              (value) => setState(() {
                selectedTransportation = value ?? Transportation.car;
              }),
        ),
        RadioListTile(
          title: const Text('By Plane'),
          subtitle: const Text('Viajar en avión'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged:
              (value) => setState(() {
                selectedTransportation = value ?? Transportation.plane;
              }),
        ),
        RadioListTile(
          title: const Text('By Bus'),
          subtitle: const Text('Viajar en Bus'),
          value: Transportation.bus,
          groupValue: selectedTransportation,
          onChanged:
              (value) => setState(() {
                selectedTransportation = value ?? Transportation.bus;
              }),
        ),
        RadioListTile(
          title: const Text('By Submarine'),
          subtitle: const Text('Viajar en submarino'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged:
              (value) => setState(() {
                selectedTransportation = value ?? Transportation.submarine;
              }),
        ),
      ],
    );
  }
}
