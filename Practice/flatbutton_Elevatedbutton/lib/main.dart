import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ColorChangeBar(),
    ),
  );
}

class ColorChangeBar extends StatefulWidget {
  const ColorChangeBar({Key? key}) : super(key: key);
  @override
  _ColorChangeBarState createState() => _ColorChangeBarState();
}

class _ColorChangeBarState extends State<ColorChangeBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 60),
                ),
                child: Text(''),
                onPressed: (){
                  print("Pressed");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,
                  minimumSize: Size(300, 60),
                ),
                child: Text(''),
                onPressed: (){
                  print("Pressed 1");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//---------------------------------------------------------------------

// Same we can do with FlatButton

/*
Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: FlatButton(
                color: Colors.teal,
                child: Text(
                  '',
                  style: TextStyle(fontSize: 50.0),
                ),
                onPressed: () {
                  print("Pressed");
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  print("Pressed 1");
                },
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: FlatButton(
                color: Colors.blue,
                child: Text(
                  '',
                  style: TextStyle(fontSize: 50.0),
                ),
                onPressed: () {
                  print("Pressed");
                },
              ),
            ),
          ),
        ],
      ),
*/
