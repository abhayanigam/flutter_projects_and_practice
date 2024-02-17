import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ScrollView Tutorial"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                      height: 200,
                      width: 200,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                height: 400,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                height: 400,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                height: 400,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                height: 400,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11,left: 10, right: 20),
                height: 400,
                color: Colors.blue,
              )
            ],
          ),
        )
      ),
    );
  }
}
