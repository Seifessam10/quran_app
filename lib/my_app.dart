import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/modules/home_modules/screens/home_screen.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/hadith_tab/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/quran_tab/quran_details_screen/quran_details_screen.dart';
import 'package:quran_app/presentation/modules/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        RoutesManger.homeRoute: (context) => HomeScreen(),
        RoutesManger.splashRoute: (context) => SplashScreen(),
        RoutesManger.quranDetailScreen: (context) => QuranDetailsScreen(),
        RoutesManger.hadithDetailsScreen: (context) => HadithDetailsScreen()
      },
      initialRoute: RoutesManger.splashRoute,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: Locale('ar'),
    );
  }
}
