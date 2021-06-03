import 'package:flutter/material.dart';
import 'package:flutter_onboarding_ui/screens/home_screen.dart';
import 'package:flutter_onboarding_ui/screens/onboarding_screen.dart';

import 'package:flutter_onboarding_ui/screens/splash.dart';

import 'screens/onboarding_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/splash.dart';
import 'screens/splash.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}