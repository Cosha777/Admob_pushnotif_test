part of 'first_page_bloc.dart';

@immutable
abstract class FirstPageEvent {}

class OnPhoneClick extends FirstPageEvent {}

class InitialSimpleBanner extends FirstPageEvent {}

class InitInterstitial extends FirstPageEvent {}

class OnDispose extends FirstPageEvent {}
