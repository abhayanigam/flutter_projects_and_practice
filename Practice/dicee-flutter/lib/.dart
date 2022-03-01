import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
      /*
        rightDistance is here to change right dice number if we click left dice.
        or if we press rightDiceNumber then left dice change.
      */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            /*
              Expand : it will expands to fill the available space in main axis.

              flex : expands widgets, expands to take up twice the width that.
              flex: 12,
            */
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
         Expanded(
                  /*
                    Expand : it will expands to fill the available space in main axis.

                    flex : expands widgets, expands to take up twice the width that.
                    flex: 5
                  */
                  child: FlatButton(
                    onPressed: (){
                      changeDiceFace();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),),);