import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../data/simple_banner.dart';
import '../../data/interstitial_banner.dart';

part 'first_page_event.dart';

part 'first_page_state.dart';

int click = 1;

class FirstPageBloc extends Bloc<FirstPageEvent, FirstPageState> {
  InterstitialBanner interstitialBanner = InterstitialBanner();
  late InterstitialAd? inter;
  late final BannerAd bannerAd;

  FirstPageBloc() : super(FirstPageInitial()) {
    on<OnPhoneClick>((event, emit) {
      inter = interstitialBanner.interstitialAd;
      var isLoaded = interstitialBanner.isInterstitialAdLoaded;

      if (isLoaded && (((click + 2) % 3) == 0)) {
        inter?.show();
      }
      click++;
    });

    on<InitialSimpleBanner>((event, emit) {
      SimpleBanner simpleBanner = SimpleBanner();
      bannerAd = simpleBanner.initSimpleBanner();
      emit(BannerLoaded(bannerAd: bannerAd));
    });

    on<InitInterstitial>((event, emit) {
      interstitialBanner.initInterstitialAd();
    });

    on<OnDispose>((event, emit) {
      inter?.dispose();
      bannerAd.dispose();
      print(
          'Dispose Dispose  Dispose  Dispose  Dispose  Dispose  Dispose  Dispose  ');
    });
  }
}
