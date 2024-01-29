import 'package:flutter/material.dart';
import 'package:onboarding/Views/onboarding_view.dart';

void main() {
  runApp(const Onboarding());
}

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const OnboardingView());
  }
}
