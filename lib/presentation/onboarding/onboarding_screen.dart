import 'package:flutter/material.dart';
import 'package:foundation_2/common/constants/text_constants.dart';
import 'package:foundation_2/presentation/onboarding/widgets/onboarding_description.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    final descriptionsList = [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: OnboardingDescription(
          title: onboardingTitle1,
          description: onboardingDescription1,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: OnboardingDescription(
          title: onboardingTitle2,
          description: onboardingDescription2,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: OnboardingDescription(
          title: onboardingTitle3,
          description: onboardingDescription3,
        ),
      ),
    ];

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 240, 240, 245),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_logo.png'),
            const SizedBox(height: 80.0),
            Flexible(
              child: SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: descriptionsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return descriptionsList[index];
                  },
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: descriptionsList.length,
              effect: const ColorTransitionEffect(
                dotHeight: 8.0,
                dotWidth: 8.0,
                activeDotColor: Color(0xFFAF52DE),
                dotColor: Color(0xFFE5E5EA),
              ),
            ),
            // const OnboardingBottomSheet(),
          ],
        ),
      ),
    );
  }
}
