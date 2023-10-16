import 'package:google_mobile_ads/google_mobile_ads.dart';

class InterstitialBanner {
  InterstitialAd? _interstitialAd;

  bool _isInterstitialAdLoaded = false;
  String interstitialId = 'ca-app-pub-3940256099942544/1033173712';

  void initInterstitialAd() {
    InterstitialAd.load(
        adUnitId: interstitialId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            _interstitialAd = ad;
            _isInterstitialAdLoaded = true;
            _interstitialAd?.fullScreenContentCallback =
                FullScreenContentCallback(
              onAdDismissedFullScreenContent: (ad) {
                ad.dispose();
                initInterstitialAd();
                _isInterstitialAdLoaded = false;
              },
              onAdFailedToShowFullScreenContent: (ad, error) {
                ad.dispose();
                _isInterstitialAdLoaded = false;
                initInterstitialAd();
              },
            );
          },
          onAdFailedToLoad: (LoadAdError error) {
            _interstitialAd = null;
            initInterstitialAd();
            // _interstitialAd?.dispose();
          },
        ));
  }

  get interstitialAd {
    return _interstitialAd;
  }

  get isInterstitialAdLoaded {
    return _isInterstitialAdLoaded;
  }
}
