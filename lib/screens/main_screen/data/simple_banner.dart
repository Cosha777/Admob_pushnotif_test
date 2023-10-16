import 'package:google_mobile_ads/google_mobile_ads.dart';

class SimpleBanner {
  late BannerAd _bannerAd;
  // bool _isLoaded = false;
  String adUnitId = 'ca-app-pub-3940256099942544/6300978111';

  BannerAd initSimpleBanner() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: adUnitId,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          // _isLoaded = true;
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print(error);
        },
      ),
      request: const AdRequest(),
    );
    _bannerAd.load();
    return _bannerAd;
  }
}
