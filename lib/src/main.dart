import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:kangy/src/Constants/color.dart';
import 'package:kangy/src/screens/splash.dart';



//Initial Function
void main() {
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MyApp(),
  );
}

//MyApp's Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
      //home: WelcomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: secondaryColor,
        accentColor: Colors.indigo,
        cursorColor: secondaryColor,
        fontFamily: 'Gilroy',
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      // home: NavBar(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: secondaryColor,
        accentColor: Colors.indigo,
        cursorColor: secondaryColor,
        fontFamily: 'Gilroy',
      ),
    );
  }
}
