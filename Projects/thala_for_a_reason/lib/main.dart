import 'package:flutter/material.dart';
import 'package:thala_for_a_reason/cardswip.dart';

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
        '/' : (context) => CardSwip(),
      },
    );
  }
}