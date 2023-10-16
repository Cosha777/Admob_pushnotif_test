part of 'first_page_bloc.dart';

@immutable
abstract class FirstPageState {}

class FirstPageInitial extends FirstPageState {}

class BannerLoaded extends FirstPageState {
  final BannerAd bannerAd;

  BannerLoaded({required this.bannerAd});
}

class InterstitialLoaded extends FirstPageState {
  final InterstitialAd? interstitialAd;

  InterstitialLoaded({required this.interstitialAd});
}
