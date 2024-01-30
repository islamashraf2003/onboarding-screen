import 'package:flutter/material.dart';
import 'package:onboarding/Models/onboarding_model.dart';
import 'package:onboarding/Widgets/custom_button.dart';
import 'package:onboarding/Widgets/custom_text_onboarding_widget.dart';
import 'package:onboarding/Widgets/dot_indicator_widget.dart';
import 'package:onboarding/Widgets/skip_button.dart';
import 'package:onboarding/Widgets/start_button.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.pageIndex,
    required this.onboardingData,
  });
  final int pageIndex;
  final List<OnboardingModel> onboardingData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: SizedBox(
            height: 290,
            child: Image.asset(onboardingData[pageIndex].image),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onboardingData.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: DotIndicator(isActive: index == pageIndex),
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomTitleWidget(
          title: onboardingData[pageIndex].title,
          subTitle: onboardingData[pageIndex].subTitle,
        ),
        const Spacer(
          flex: 2,
        ),
        pageIndex != 2
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SkipButton(),
                  CustomButton(text: "Next"),
                ],
              )
            : const StartButton(),
        const Spacer(),
      ],
    );
  }
}
