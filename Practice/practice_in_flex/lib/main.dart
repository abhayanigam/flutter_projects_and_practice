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
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Expanded Column Sample'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 50,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
