import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class OnboardingDescription extends StatelessWidget {
  const OnboardingDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final colorTheme = TanExpressColorTheme.of(context);

    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24.0,
            color: colorTheme.textPrimary,
            height: 33.6 / 24.0,
          ),
          textAlign: TextAlign.center,
        ),
        Flexible(
          child: Text(
            description,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: colorTheme.textSecondary,
              height: 19.6 / 14.0,
            ),
            maxLines: 3,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
