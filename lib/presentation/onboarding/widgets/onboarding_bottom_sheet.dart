import 'package:flutter/material.dart';
import 'package:foundation_2/common/constants/text_constants.dart';
import 'package:foundation_2/presentation/onboarding/widgets/login_with_id_button.dart';
import 'package:foundation_2/presentation/onboarding/widgets/login_with_phone_button.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class OnboardingBottomSheet extends StatelessWidget {
  const OnboardingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = TanExpressColorTheme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: colorTheme.foregroundTertiary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: colorTheme.buttonTertiary,
            ),
            height: 4.0,
            width: 57,
          ),
          const SizedBox(height: 35.0),
          const LoginWithIdButton(),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 145.0,
                height: 1.0,
                color: colorTheme.buttonTertiary,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  orText,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    height: 16.8 / 12.0,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              Container(
                width: 145.0,
                height: 1.0,
                color: colorTheme.buttonTertiary,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          const LoginWithPhoneButton(),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }
}
