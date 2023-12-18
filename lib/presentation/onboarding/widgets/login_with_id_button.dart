import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foundation_2/common/constants/text_constants.dart';
import 'package:foundation_2/presentation/login_phone_number/login_phone_number_screen.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class LoginWithIdButton extends StatelessWidget {
  const LoginWithIdButton({super.key});

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
          horizontal: 24.0,
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: colorTheme.buttonSecondary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 24.0),
            Text(
              loginWithIdButtonText,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16.0,
                color: colorTheme.backgroundPrimary,
                height: 19.2 / 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            SvgPicture.asset('assets/icons/group.svg'),
          ],
        ),
      ),
    );
  }
}
