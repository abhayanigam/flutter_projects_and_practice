import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(),
        ),
      ),
    ),
  );
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The GestureDetector widget doesn’t have a visual representation but
    // instead detects gestures made by the user. When the user taps the
    // Container, the GestureDetector calls its onTap() callback, in this
    // case printing a message to the console. You can use GestureDetector
    // to detect a variety of input gestures, including taps, drags, and scales.
    return GestureDetector(
      onTap: (){
        print('MyButton was tapped!');
      },
      child: Container(
        height: 50.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.cyan,
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
