import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:ad_mob_test/screens/main_screen/data/api/firebase_api.dart';
import 'package:ad_mob_test/screens/main_screen/ui/bloc/first_page_bloc.dart';
import 'package:ad_mob_test/screens/main_screen/ui/first_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  await FireBaseApi().initNotification();

  runApp(const MyApp());
}

//
//
//
//
//
//
//
//
//
//
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        // useMaterial3: true,
      ),
      home: BlocProvider<FirstPageBloc>(
        create: (context) => FirstPageBloc(),
        child: const FirstPage(),
      ),
    );
  }
}
