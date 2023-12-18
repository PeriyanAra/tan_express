import 'package:flutter/material.dart';

extension SizeConstantsExtension on double {
  Size get logicalScreenSize {
    final data =
        MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
    return data.size;
  }

  Size get defaultPrototypeSize {
    return const Size(375, 812);
  }

  double getProportionalSize() {
    final percentWidth = (this * 100) / defaultPrototypeSize.width;
    final logicalWidth = logicalScreenSize.width;
    final screenPercent = (percentWidth * logicalWidth) / 100;
    return screenPercent;
  }
}
