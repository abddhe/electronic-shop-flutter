import 'package:electronic_shop/constants.dart';
import 'package:electronic_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FlutterLocalization localization = FlutterLocalization.instance;

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('ar', "AE"), Locale('en', "US")],
      localizationsDelegates: localization.localizationsDelegates,
      locale: const Locale('ar', "AE"),
      title: 'Electronic Shop',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kBackgroundColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: kPrimaryColor,
          secondary: kAccentColor,
        ),
        fontFamily: GoogleFonts.tajawal().fontFamily,
        textTheme: GoogleFonts.tajawalTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
