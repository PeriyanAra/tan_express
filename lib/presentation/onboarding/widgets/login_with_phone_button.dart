import 'package:flutter/material.dart';
import 'package:foundation_2/common/constants/text_constants.dart';
import 'package:foundation_2/presentation/login_phone_number/login_phone_number_screen.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class LoginWithPhoneButton extends StatelessWidget {
  const LoginWithPhoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = TanExpressColorTheme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<Widget>(
            builder: (context) => const LoginPhoneNumberScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: colorTheme.backgroundPrimary,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              loginWithPhoneButtonText,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 12.0,
                color: colorTheme.textPrimary,
                height: 14.4 / 12.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 8.0),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: colorTheme.textSecondary,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
