import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/common/widgets/height_box.dart';
import 'package:foundation_2/presentation/common/widgets/login_app_bar.dart';
import 'package:foundation_2/presentation/common/widgets/tan_express_close_button.dart';
import 'package:foundation_2/presentation/common/widgets/tan_express_primary_button.dart';
import 'package:foundation_2/presentation/common/widgets/tan_express_text_field.dart';
import 'package:foundation_2/presentation/theme/theme.dart';

class LoginPhoneNumberScreen extends StatefulWidget {
  const LoginPhoneNumberScreen({super.key});

  @override
  State<LoginPhoneNumberScreen> createState() => _LoginPhoneNumberScreenState();
}

class _LoginPhoneNumberScreenState extends State<LoginPhoneNumberScreen> {
  late final TextEditingController _controller;
  late final StreamController<void> _textFieldStream;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
    _textFieldStream = StreamController<void>();

    _controller.addListener(
      () {
        _textFieldStream.sink.add(null);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _textFieldStream.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final commonScreensTheme = TanExpressCommonScreensTheme.of(context);

    return Scaffold(
      appBar: const LoginAppBar(title: 'Logga in med telefon'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: commonScreensTheme.horizontalPadding),
        child: StreamBuilder<void>(
          stream: _textFieldStream.stream,
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TanExpressTextField(
                  textInputType: TextInputType.phone,
                  controller: _controller,
                  hintText: 'Ange din telefonnummerd',
                  suffixIcon: _controller.text.isNotEmpty
                      ? TanExpressCloseButton(
                          onTap: () => _controller.clear(),
                        )
                      : null,
                ),
                const HeightBox(height: 12.0),
                TanExpressPrimaryButton(
                  text: 'Fortsätt',
                  onTap: () => {},
                  enabled: _controller.text.isNotEmpty,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
