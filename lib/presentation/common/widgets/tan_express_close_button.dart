import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class TanExpressCloseButton extends StatelessWidget {
  const TanExpressCloseButton({
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorTheme = TanExpressColorTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 18.0,
        width: 18.0,
        decoration: BoxDecoration(
          color: colorTheme.foregroundSecondary,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.close_rounded,
          color: colorTheme.foregroundPrimary,
          size: 20,
        ),
      ),
    );
  }
}
