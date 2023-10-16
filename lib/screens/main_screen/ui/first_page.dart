import 'package:ad_mob_test/screens/main_screen/ui/phone_card.dart';
import 'package:ad_mob_test/screens/main_screen/domain/phone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'bloc/first_page_bloc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    context.read<FirstPageBloc>().add(InitialSimpleBanner());
    context.read<FirstPageBloc>().add(InitInterstitial());
  }

  @override
  void dispose() {
    super.dispose();
    context.read<FirstPageBloc>().add(OnDispose());

    // _bannerAd.dispose();
    // _interstitialAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FirstPageBloc bloc = context.read<FirstPageBloc>();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true, title: const Text('AdMob test')),
        body: ListView.builder(
            itemCount: PhoneModel.list.length,
            itemBuilder: (context, position) {
              return Phonecard(
                name: PhoneModel.list[position].name,
                photoUrl: PhoneModel.list[position].photo,
                text: PhoneModel.list[position].article,
                price: PhoneModel.list[position].price,
                // isInterstitialAdLoaded: _isInterstitialAdLoaded,
                // interstitialAd: _interstitialAd,
                bloc: bloc,
              );
            }),
        bottomNavigationBar: BlocBuilder<FirstPageBloc, FirstPageState>(
          builder: (context, state) {
            if (state is BannerLoaded) {
              return SizedBox(
                height: state.bannerAd.size.height.toDouble(),
                width: state.bannerAd.size.width.toDouble(),
                child: AdWidget(ad: state.bannerAd),
              );
            }
            return const SizedBox(
              child: Text('Soma data'),
            );
          },
        ));
  }
}
