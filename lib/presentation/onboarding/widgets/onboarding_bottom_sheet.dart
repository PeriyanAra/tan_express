import 'package:flutter/material.dart';
import 'package:foundation_2/common/constants/text_constants.dart';
import 'package:foundation_2/presentation/onboarding/widgets/login_with_id_button.dart';
import 'package:foundation_2/presentation/onboarding/widgets/login_with_phone_button.dart';

class OnboardingBottomSheet extends StatelessWidget {
  const OnboardingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        children: [
          const LoginWithIdButton(),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 100.0, height: 1.0, color: const Color(0xFFF2F2F7)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(orText),
              ),
              Container(width: 100.0, height: 1.0, color: const Color(0xFFF2F2F7)),
            ],
          ),
          const SizedBox(height: 8.0),
          const LoginWithPhoneButton(),
        ],
      ),
    );
  }
}
