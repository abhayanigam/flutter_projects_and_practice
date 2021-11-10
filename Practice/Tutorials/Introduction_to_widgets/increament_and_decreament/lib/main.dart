import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Count(),
        ),
      ),
    ),
  );
}

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if(_count > 0){
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _increment,
              child: Text("Increment"),
            ),
            SizedBox(
              width: 16,
            ),

            Text('Count : $_count'),

            SizedBox(
              width: 16,
            ),

            ElevatedButton(
              onPressed: _decrement,
              child: Text("decrement"),
            ),

            SizedBox(
              width: 16,
            ),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: _decrement,
        //       child: Text("decrement"),
        //     ),
        //     SizedBox(
        //       width: 16,
        //     ),
        //     Text('Count : $_count'),
        //   ],
        // ),
      ],
    );
  }
}
