import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.white70,
            title: Text(
              "App Bar Demo",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),

            // 1st Leading method
            // leading: IconButton(
            //   icon : Icon(Icons.menu,color: Colors.black,),
            //   tooltip : "ActionButton",
            //   onPressed: (){},
            // ),

            //2nd method (It Doesn't supports tooltip)
            leading: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),

            // Action 1 and 2
            actions: [
              TextButton( //(It Doesn't supports tooltip)
                onPressed: () {},
                child: Text("Action",
                style : TextStyle(
                  color: Colors.black,
                  fontSize: 20.0
                ))
              ),

              IconButton(
                  onPressed: (){},
                  tooltip : "ActionButton",
                  icon : Icon(Icons.search,color: Colors.black,)
              )
            ],

          ),
          body: SafeArea(
            child: Center(
                // child: Image.asset("images/app_bar.png")
                child: Image(image: AssetImage('images/app_bar.png'))),
          ),
        ),
      );
  }
}
