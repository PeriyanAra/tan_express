import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/common/widgets/custom_nav_bar/tan_express_bottom_nav_bar.dart';
import 'package:foundation_2/presentation/nyheter/widgets/news_item.dart';

class NyheterScreen extends StatelessWidget {
  const NyheterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: TanExpressCustomBottomNavBar(),
      body: Center(
        child: SingleChildScrollView(
          child: NewsItem(),
        ),
      ),
    );
  }
}
