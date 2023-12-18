import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_text_theme.dart';

class TanExpressAppBar extends StatelessWidget {
  const TanExpressAppBar({
    Key? key,
    required this.title,
    required this.offset,
  }) : super(key: key);

  final String title;
  final double offset;

  @override
  Widget build(BuildContext context) {
    final tanExpressTextTheme = TanExpressTextTheme.of(context);

    return SliverAppBar(
      expandedHeight: 88.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: offset == 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: offset == 0 ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: offset == 0
                    ? tanExpressTextTheme.title1_5.copyWith(fontWeight: FontWeight.w800)
                    : tanExpressTextTheme.callout.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
