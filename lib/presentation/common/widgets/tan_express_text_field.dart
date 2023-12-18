import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_common_screens_theme.dart';

class TanExpressTextField extends StatelessWidget {
  const TanExpressTextField({
    this.hintText,
    this.onChanged,
    this.controller,
    this.suffixIcon,
    this.textInputType,
    super.key,
  });

  final String? hintText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    final screensTheme = TanExpressCommonScreensTheme.of(context);

    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIconConstraints: suffixIcon != null
            ? const BoxConstraints(
                minWidth: 40.0,
                maxHeight: 40.0,
                maxWidth: 40.0,
                minHeight: 40.0,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: EdgeInsets.only(right: screensTheme.horizontalPadding),
                child: suffixIcon,
              )
            : null,
        hintText: hintText,
      ),
    );
  }
}
