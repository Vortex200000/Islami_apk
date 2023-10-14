// islami part1

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_part1/Splash_Screen.dart';
import 'package:islami_part1/SuraDetails.dart';
import 'package:islami_part1/home.dart';
import 'package:islami_part1/my_theme_data.dart';

void main()
{
runApp(const Myapp());
 
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        Home.RouteName : (context) => Home(),
        SuraDetail.routName:(context) => SuraDetail(),
        'splash':(context) => Splash(),
      },
      theme: MyThemesData.lightTheme,
      darkTheme: MyThemesData.darkTheme,
    );
  }
}