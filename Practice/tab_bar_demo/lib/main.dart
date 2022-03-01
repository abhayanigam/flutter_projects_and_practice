import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //Implementation of tab bar using defaulttabcontroller
      home: DefaultTabController(
        initialIndex: 0, // Start from 0 to Range you have given
        length: 3, //Number of tabs you want
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Demo"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.cloud_outlined)),
                Tab(icon: Icon(Icons.beach_access_sharp)),
                Tab(icon: Icon(Icons.brightness_5_sharp)),
              ],
            ),
          ),

          body: const TabBarView(
            children: [
              Center(
                child:
                    Text("Index 0 It's cloudy here"),
              ),
              Center(
                  child: Text("Index 1 It's rainy here")
              ),
              Center(
                  child: Text("Index 2 It's sunny here")
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Center(child: Text("hello")),
//         Center(child: Text("world"))
//       ],
//     );
//   }
// }