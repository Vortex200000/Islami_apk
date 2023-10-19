// islami part1

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/Providers/my_provider.dart';
import 'package:islami_part1/Splash_Screen.dart';
import 'package:islami_part1/SuraDetails.dart';
import 'package:islami_part1/ahadeth_details.dart';
import 'package:islami_part1/home.dart';
import 'package:islami_part1/my_theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      // wrap the material with change notifer to make it listen to all changes
      create: (context) => Myprovider(),
      child: Myapp()));
}

class Myapp extends StatelessWidget {
  // const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<Myprovider>(context);
    // convertLanguage();
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.IsoCode.toString()),
      // locale : locale
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

//   static void setLocale(BuildContext context, Locale newlocale) { *
//     _MyappState? state = context.findAncestorStateOfType<_MyappState>();
//     state?.setlocale(newlocale);
//   }
}