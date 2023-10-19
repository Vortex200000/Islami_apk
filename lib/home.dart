import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/Taps/Ahadeth_Tap.dart';
import 'package:islami_part1/Taps/Quran_Tap.dart';
import 'package:islami_part1/Taps/Sepha_tap.dart';
import 'package:islami_part1/Taps/Settings.dart';
import 'package:islami_part1/Taps/radio_tap.dart';
import 'package:islami_part1/my_theme_data.dart';

class Home extends StatefulWidget {
  // const Home({super.key});

  static const String RouteName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int index = 0;

  @override
  Widget build(BuildContext context) {

    return Stack(children: [
      Image.asset(
    'assets/images/bg3.png',
    width: double.infinity,
    fit: BoxFit.cover,
      ),
      Scaffold(
    appBar: AppBar(
      elevation: 0,
          title: Text(AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge),
        ),

    bottomNavigationBar: BottomNavigationBar(
  currentIndex: index,
      onTap: (value) {
        index = value;
        setState(() {

        });
      },
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')) ,label: "" , backgroundColor: MyThemesData.brimaryColour),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')), label: "", backgroundColor: MyThemesData.brimaryColour),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth 1x.png')) ,label: "", backgroundColor: MyThemesData.brimaryColour),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')) ,label: "", backgroundColor: MyThemesData.brimaryColour),
          BottomNavigationBarItem(icon: Icon(Icons.settings) ,label: "", backgroundColor: MyThemesData.brimaryColour),

          ]
    ),
      body: Taps[index],
      )


    ]);
  }
  List<Widget>Taps = [RadioTap() , SephaTap(),AhadethTap() , QuranTap(), SettingsTap()];
}
