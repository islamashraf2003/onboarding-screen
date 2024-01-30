import 'package:flutter/material.dart';
import 'package:onboarding/Models/onboarding_model.dart';
import 'package:onboarding/Widgets/onboarding_content.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingWidget(),
    );
  }
}

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  late PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> onboardingData = [
      OnboardingModel(
        image: "assets/Images/image1.png",
        title: "Track your work and get the result",
        subTitle:
            "Remember to keep track of your professional accomplishments.",
        color: const Color(0xffDAD3C8),
      ),
      OnboardingModel(
        image: "assets/Images/image2.png",
        title: "Stay organized with team",
        subTitle:
            "But understanding the contributions our colleagues make to our teams and companies",
        color: const Color(0xffFFE5DE),
      ),
      OnboardingModel(
        image: "assets/Images/image3.png",
        title: "Get notified when work happens",
        subTitle:
            "Take control of notifications, collaborate live or on your own time",
        color: const Color(0xffDCF6E6),
      ),
    ];

    return Scaffold(
      backgroundColor: onboardingData[pageIndex].color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: onboardingData.length,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardingContent(
                    pageIndex: pageIndex,
                    onboardingData: onboardingData,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
