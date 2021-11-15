import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Demo Bar",
      home: BottomBar(),
    ),
  );
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _SelectIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);

  List<Widget> _listOptions = <Widget>[
    Center(
      child: Text(
        'Index 0 : Home',
        style: optionStyle,
      ),
    ),

    Center(
      child: Text(
        'Index 1 : Business',
        style: optionStyle,
      ),
    ),

    Center(
      child: Text(
        'Index 2 : School',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _SelectIndex = index;
      print("value : $_listOptions.elementAt(_SelectIndex)");
      print("v : $_SelectIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: _listOptions.elementAt(_SelectIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _SelectIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
