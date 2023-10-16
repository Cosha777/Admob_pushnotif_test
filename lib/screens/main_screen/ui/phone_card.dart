import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ad_mob_test/screens/main_screen/ui/bloc/first_page_bloc.dart';
import 'package:ad_mob_test/screens/details_screen/ui/details_page.dart';

class Phonecard extends StatelessWidget {
  const Phonecard({
    super.key,
    required this.name,
    required this.photoUrl,
    required this.text,
    required this.price,
    required this.bloc,
  });

  final String name;
  final String photoUrl;
  final String text;
  final int? price;

  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  bloc.add(OnPhoneClick());
                  // if (isInterstitialAdLoaded && (((click + 3) % 4) == 0)) {
                  // }
                  // click++;
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => DetailsPage(
                            name: name, photoUrl: photoUrl, text: text)),
                  );
                },
                child: Image.network(
                  photoUrl,
                  height: 200,
                  width: 200,
                )),
            Text(price != null ? '$price USD' : 'Out of stock'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.share, color: Colors.blue, size: 18),
                  SizedBox(width: 10),
                  Icon(Icons.star_border, color: Colors.blue, size: 22)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
