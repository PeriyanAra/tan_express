import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Publicerad 25 oktober 2022',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              const Text(
                'ANVÄND DITT FRISKVÅRDS-BIDRAG HOS OSS GENOM EPASSI & WELLNET ELLER MOT UNDERLAG DIREKT I TANEXPRESS-APPEN',
              ),
              const SizedBox(
                height: 16.0,
              ),
              Image.asset('assets/images/news_item_photo.png'),
              const Text(
                'WELLNESS GRANT AT TANEXPRESS!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'WELLNESS GRANT AT TANEXPRESS!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Link to: ePassi In the search field, write TanExpress Solarium so you find the right one.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
