import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

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
            nextScreen: FirstScreen()),
        '/first' : (context) => FirstScreen(),
        '/second' : (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
          child: Text("Launch Screen"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigate back to the first screen by popping the current route
            // off the stack
            Navigator.pop(context);
          },
          child: Text("Go back !"),
        ),
      ),
    );
  }
}