import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                width: 100.0,
              ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                    color: Colors.yellow,
                    width: 100.0,
                    height: 100.0,
                  ),
                    Container(
                      color: Colors.green,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ],
                ),
              Container(
                color: Colors.blue,
                width: 100.0,
              ),
            ],
          )
        ),
      ),
    );
  }
}
