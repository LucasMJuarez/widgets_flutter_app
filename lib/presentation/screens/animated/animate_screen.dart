import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimateScreen extends StatefulWidget {
  static const String name = 'animate_screen';

  const AnimateScreen({super.key});

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {
  double width = 59;
  double height = 50;

  Color color = Colors.indigo;

  double borderRadius = 10;

  void changeShape() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: const Center(
            child: Text(
              'Animated Container',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
        },
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
