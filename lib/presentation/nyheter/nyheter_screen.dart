import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/common/widgets/app_bar/tan_express_app_bar.dart';
import 'package:foundation_2/presentation/common/widgets/custom_nav_bar/tan_express_bottom_nav_bar.dart';
import 'package:foundation_2/presentation/nyheter/widgets/news_item.dart';

class NyheterScreen extends StatefulWidget {
  const NyheterScreen({
    super.key,
  });

  @override
  State<NyheterScreen> createState() => _NyheterScreenState();
}

class _NyheterScreenState extends State<NyheterScreen> {
  final ScrollController _scrollController = ScrollController();
  double offset = 0.0;
  
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        offset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TanExpressCustomBottomNavBar(),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            TanExpressAppBar(
              title: 'Nyheter',
              offset: offset,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (
                  BuildContext context,
                  int index,
                ) {
                  return const NewsItem();
                },
              ),
            ),
          ];
        },
        body: const NewsItem(),
      ),
    );
  }
}
