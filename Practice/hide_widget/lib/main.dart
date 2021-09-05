import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Visibility And Opacity'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "one",
                style: TextStyle(fontSize: 60),
              ),

              // Visibility widget to manage visibility
              // Visibility(
              //   // showing the child widget
              //   visible: false,
              //   child: Text(
              //     "two",
              //     style: TextStyle(fontSize: 60),
              //   ),
              // ),
              Opacity(

                // hiding the child widget
                opacity: 1,
                child: Text(
                  "two",
                  style: TextStyle(fontSize: 60),
                ),
              ),
              Text(
                "three",
                style: TextStyle(fontSize: 60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
