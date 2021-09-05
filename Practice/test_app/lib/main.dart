import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(My());
}

class My extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.red,
            ),
            Text(
              'Abhaya',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 25.5,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.5),
              color: Colors.black,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text('1410947',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.teal,
                ),),
              ),
            ),

            Container(
              margin: EdgeInsets.all(2),
              child: FlatButton(
                child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: FlatButton(
                child: Text('SignUp', style: TextStyle(fontSize: 20.0),),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
