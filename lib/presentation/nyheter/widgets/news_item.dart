import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';
import 'package:foundation_2/presentation/theme/tan_express_text_theme.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tanExpressTextTheme = TanExpressTextTheme.of(context);
    final tanExpressColorTheme = TanExpressColorTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Publicerad 25 oktober 2022',
                style: tanExpressTextTheme.caption2.copyWith(fontWeight: FontWeight.w500),
              ),
              const Divider(),
              Text(
                'ANVÄND DITT FRISKVÅRDS-BIDRAG HOS OSS GENOM EPASSI & WELLNET ELLER MOT UNDERLAG DIREKT I TANEXPRESS-APPEN',
                style: tanExpressTextTheme.callout.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Image.asset('assets/images/news_item_photo.png'),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'WELLNESS GRANT AT TANEXPRESS!',
                style: tanExpressTextTheme.callout.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'WELLNESS GRANT AT TANEXPRESS!',
                style: tanExpressTextTheme.callout.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'Link to: ePassi In the search field, write TanExpress Solarium so you find the right one.',
                style: tanExpressTextTheme.caption2.copyWith(
                  fontWeight: FontWeight.w500,
                  color: tanExpressColorTheme.foregroundSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
