import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InfoBar());
}

class InfoBar extends StatelessWidget {
  const InfoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Hiding Image'),
          backgroundColor: Colors.blue,
        ),
        body: HideImage(),
      ),
    );
  }
}

class HideImage extends StatefulWidget {
  const HideImage({Key? key}) : super(key: key);

  @override
  _HideImageState createState() => _HideImageState();
}

class _HideImageState extends State<HideImage> {

  // For Method 1 Opacity Function
  double _visible = 1;

  void check(){
    setState(() {
      if(_visible == 1){
        _visible--;
      }else if(_visible == 0){
        _visible++;
      }
    });
  }

  // For Method 2 Visible Function
  bool _isVisible = true;

  void showTest() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Method 1 With space.
          Opacity(
            opacity: _visible,
            child: Image.network(
                'https://cdn.luxe.digital/media/2020/12/15110747/fastest-cars-world-2021-luxe-digital%402x.jpg'),
          ),

          // //Method 2 Without space.
          // Visibility(
          //   visible: _isVisible,
          //   child: Image.network(
          //       'https://cdn.luxe.digital/media/2020/12/15110747/fastest-cars-world-2021-luxe-digital%402x.jpg'),
          // ),

          SizedBox(
            height: 15.0,
          ),
          Center(
            child: RaisedButton(
              child: Text('Click To Hide'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                check();
                showTest();
              },
            ),
          ),
        ],
      ),
    );
  }
}
