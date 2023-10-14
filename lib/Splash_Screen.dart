
import 'package:flutter/material.dart';
import 'package:islami_part1/home.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // const Splash({super.key});
  void initState(){
    super.initState();
    _navigatetohome();
  }


  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/splash.png",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
