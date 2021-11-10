import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowCheckerModeBanner is used here to remove the banner in the app
      home: Center(
        child: Text("Hello World"),
      ),
    ),
  );
}
