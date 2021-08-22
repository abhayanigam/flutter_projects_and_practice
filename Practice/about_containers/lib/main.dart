import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea( // The safe area moves the text in to the safe area and
          // it now only takes up the space where it's visible to the user.

          child: Column /* or Row */(
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up,
            // this is to change the direction and down is the default one.

            // mainAxisAlignment: MainAxisAlignment.center,//or start,end
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,// or spaceEvenly

            crossAxisAlignment: CrossAxisAlignment.stretch,
            //This the cross or perpendicular to the main axis, they'll be the
            //horizontal.
            children: [
              Container(
                height: 100.0,
                // width: 100.0,
                //padding: EdgeInsets.all(20.0),
// margin: EdgeInsets.all(20.0),
// margin: EdgeInsets.symmetric(vertical: 50.0,horizontal:10.0),
// margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
// margin: EdgeInsets.only(left: 30.0),
// padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 20.0, // When we are using column use height
                // width: 20.0, // When we are using row use width
              ),
              Container(
                // width: 100.0,
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                height: 20.0, // When we are using column use height
                // width: 20.0, // When we are using row use width
              ),
              Container(
                height: 100.0,
                // width: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          )
        ),
      ),
    );
  }
}

