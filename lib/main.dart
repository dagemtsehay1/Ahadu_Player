import 'package:ahadu_player/view/homepage.dart';
import "package:flutter/material.dart";
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Ahadu Player",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      gradientBackground: LinearGradient(
        colors: [
          // Color.fromRGBO(44, 62, 80, 0.8),
          Colors.yellowAccent,
          Colors.pinkAccent,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.1, 1],
      ),
      seconds: 14,
      navigateAfterSeconds: HomePage(),
      title: Text(
        'Ahadu Player',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Colors.white,
          fontFamily: "Audiowide",
          letterSpacing: 4,
        ),
      ),
      image: Image(
        image: AssetImage("images/logo.png"),
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.white,
    );
  }
}
