import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: FristRoute(),
    ),
  );
}

class FristRoute extends StatelessWidget {
  const FristRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FristRoute',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Route'),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('SecondRoute')
      ),
      body : Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Go Back !'),
        ),
      )
    );
  }
}
