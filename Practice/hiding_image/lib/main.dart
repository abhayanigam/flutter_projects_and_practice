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

class HideApp extends StatefulWidget {
  const HideApp({Key? key}) : super(key: key);

  @override
  _HideAppState createState() => _HideAppState();
}

class _HideAppState extends State<HideApp> {

  double _ans = 1;
  void showToast() {
    setState(() {
      if(_ans == 1){
        _ans--;
      }else if(_ans == 0){
        _ans++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: _ans,
          child: Image.network('https://cdn.luxe.digital/media/2020/12/15110747/fastest-cars-world-2021-luxe-digital%402x-2048x1024.jpg'),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: FlatButton(
            child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: () {
              showToast();
            },
          ),
        ),
      ],
    );;
  }
}
