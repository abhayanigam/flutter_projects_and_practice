import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Text('I Am Poor'),
            backgroundColor: Colors.black12,
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/ghost.png'),
            ),
          ),
        )
    ),
  );
}