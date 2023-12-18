import 'package:flutter/material.dart';
import 'package:foundation_2/common/constants/text_constants.dart';

class LoginWithPhoneButton extends StatelessWidget {
  const LoginWithPhoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xFFF2F2F7),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            loginWithPhoneButtonText,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
              color: Color(0xFF000000),
              height: 19.2 / 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xFF8E8E93),
            size: 16.0,
          ),
        ],
      ),
    );
  }
}
