import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Skip",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 19, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
