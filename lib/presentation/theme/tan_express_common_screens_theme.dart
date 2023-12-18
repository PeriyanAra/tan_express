import 'package:flutter/material.dart';

class TanExpressCommonScreensTheme extends ThemeExtension<TanExpressCommonScreensTheme> {
  double get horizontalPadding => 16.0;

  @override
  ThemeExtension<TanExpressCommonScreensTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<TanExpressCommonScreensTheme> lerp(
    covariant ThemeExtension<TanExpressCommonScreensTheme>? other,
    double t,
  ) {
    return this;
  }

  static TanExpressCommonScreensTheme of(BuildContext context) {
    return Theme.of(context).extension<TanExpressCommonScreensTheme>()!;
  }
}
