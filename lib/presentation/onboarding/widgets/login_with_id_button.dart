import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foundation_2/common/constants/text_constants.dart';

class LoginWithIdButton extends StatelessWidget {
  const LoginWithIdButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xFF1C1C1E),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            loginWithIdButtonText,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
              color: Color(0xFFF2F2F7),
              height: 19.2 / 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          SvgPicture.asset('assets/icons/group.svg'),
        ],
      ),
    );
  }
}
