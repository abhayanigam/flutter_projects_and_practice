import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("InkWell Tutorial"),
        ),
        body: Center(
          child: SafeArea(
            child: InkWell(
              onTap: () {
                print("Tapped On Container");
              },
              onLongPress: () {
                print("On Long Pressed");
              },
              onDoubleTap: () {
                print("On double Tap pressed");
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: Center(
                    child: InkWell(
                      onTap: (){print("Text Clicked");},
                        child: Text("CLick Here",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold)))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
