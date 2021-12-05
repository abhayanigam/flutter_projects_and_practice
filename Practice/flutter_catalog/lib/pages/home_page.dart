import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Here AppBar show differently Like in ios text show in center and in android text show in left.
        backgroundColor: Colors.deepPurple,
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Flutter Catalog"),
        ),
      ),
    );
  }
}
