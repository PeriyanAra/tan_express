import 'package:flutter/material.dart';
import 'package:foundation_2/common/constants/text_constants.dart';
import 'package:foundation_2/presentation/onboarding/widgets/onboarding_bottom_sheet.dart';
import 'package:foundation_2/presentation/onboarding/widgets/onboarding_description.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = TanExpressColorTheme.of(context);
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
      body: Stack(
        children: [
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/app_logo.png'),
                const SizedBox(height: 80.0),
                SizedBox(
                  height: 150,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: descriptionsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return descriptionsList[index];
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: descriptionsList.length,
                  effect: ColorTransitionEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: colorTheme.primary,
                    dotColor: const Color(0xFFE5E5EA),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: OnboardingBottomSheet(),
          ),
        ],
      ),
    );
  }
}
