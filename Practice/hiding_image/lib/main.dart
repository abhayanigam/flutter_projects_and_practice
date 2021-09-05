import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Hiding Image'),
        ),
        body: HideApp(),
      ),
    ),
  );
}

class HideApp extends StatelessWidget {

  double check() {
    double ans = 0;
    print('entry');
    ans++;
    if (ans == 1) {
      return ans = 1;
    }
    else {
      return ans = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: check(),
         child: Image.network('https://cdn.luxe.digital/media/2020/12/15110747/fastest-cars-world-2021-luxe-digital%402x-2048x1024.jpg'),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: FlatButton(
            child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: () {
              print("Pressed");
            },
          ),
        ),
      ],
    );
  }
}
