import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Avenger Roll',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: AvenFunc(),
        backgroundColor: Colors.teal,
      ),
    ),
  );
}

class AvenFunc extends StatefulWidget {
  @override
  _AvenFuncState createState() => _AvenFuncState();
}

class _AvenFuncState extends State<AvenFunc> {
  int Roll = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            Roll = Random().nextInt(21)+1;
          });
        },
        child: Image.asset('images/avengers$Roll.png'),
      ),
    );
  }
}
