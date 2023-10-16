// islami part1

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/Splash_Screen.dart';
import 'package:islami_part1/SuraDetails.dart';
import 'package:islami_part1/ahadeth_details.dart';
import 'package:islami_part1/home.dart';
import 'package:islami_part1/my_theme_data.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();

  static void setLocale(BuildContext context, Locale newlocale) {
    _MyappState? state = context.findAncestorStateOfType<_MyappState>();
    state?.setlocale(newlocale);
  }
}

class _MyappState extends State<Myapp> {
  // const Myapp({super.key});

  Locale? locale;

  setlocale(Locale localee) {
    setState(() {
      locale = localee;
    });
  }

  @override
  Widget build(BuildContext context) {
    // convertLanguage();
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        Home.RouteName: (context) => Home(),
        SuraDetail.routName: (context) => SuraDetail(),
        'splash': (context) => Splash(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
      theme: MyThemesData.lightTheme,
      darkTheme: MyThemesData.darkTheme,
    );
  }

// convertLanguage(){
//  lang = languages[SettingsTapState.index];
//   setState(() {
//
//   });
//
// }
}