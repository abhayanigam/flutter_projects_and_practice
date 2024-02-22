import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/verification/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Changing Routes",
      initialRoute: '/',
      routes: {
        // Making an splash screen
        '/' : (context) => AnimatedSplashScreen(
            splash: Image.network('https://cdn-icons-png.flaticon.com/512/7028/7028147.png'),
            duration: 5000,
            splashTransition: SplashTransition.fadeTransition,
            // backgroundColor: Colors.white10,
            nextScreen: HomePage()),
        '/first' : (context) => HomePage(),
      },
    );
  }
}
