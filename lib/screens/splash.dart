import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/home_screen.dart';

import 'package:lottie/lottie.dart';

import 'onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new HomeScreen()));
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new OnboardingScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
             decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFF3594DD),
            Color(0xFF4563DB),
            Color(0xFF5036D5),
            Color(0xFF5B16D0),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: SizedBox(
            width: 200,
            height: 200,
            child: Lottie.asset('assets/images/virus.json'))),
            SizedBox(height:50),
          
  

  Image(image: AssetImage("assets/docs/images/index.png"),
  width: 150,
  height: 150,
  ),
  
        ],
      ),
          ),
    );
  }
}
