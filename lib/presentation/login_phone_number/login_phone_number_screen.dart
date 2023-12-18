import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/common/widgets/login_app_bar.dart';

class LoginPhoneNumberScreen extends StatelessWidget {
  const LoginPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LoginAppBar(title: 'Logga in med telefon'),
    );
  }
}
