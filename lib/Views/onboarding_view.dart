import 'package:flutter/material.dart';
import 'package:onboarding/Widgets/skip-widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SkipeButton(),
        ],
      ),
    );
  }
}
