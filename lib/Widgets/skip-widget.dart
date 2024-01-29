import 'package:flutter/material.dart';

class SkipeButton extends StatelessWidget {
  const SkipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(right: 16),
      onPressed: () {},
      icon: const Text(
        "Skip",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
