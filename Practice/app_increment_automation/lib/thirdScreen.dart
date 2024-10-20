import 'package:flutter/material.dart';

class thirdScreen extends StatefulWidget {
  const thirdScreen({super.key});

  @override
  State<thirdScreen> createState() => _thirdScreenState();
}

class _thirdScreenState extends State<thirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen 3rd'),
          ],
        ),
      ),
    );;
  }
}
