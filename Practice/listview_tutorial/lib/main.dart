import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('List View Tutorial'),
      ),
      body: SafeArea(
        child: ListView.separated(
          // reverse: true,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index+1}'),
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(DateTime.now().toString()), // Displaying current time
                  SizedBox(width: 8), // Adding some space between the time and icon
                  Icon(Icons.add),
                ],
              ),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 1,thickness: 4,);
          },
        ),
      ),
    );
  }
}

/*
// Type 1:

ListView(
          scrollDirection: Axis.horizontal,
          // reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("One", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Two", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Three", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Four", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Five", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            )
          ],
        ),

 // Type 2:
 ListView.builder(
          // reverse: true,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          itemExtent: 100,
        ),

// Type 3:
ListView.separated(
          // reverse: true,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(height: 1,thickness: 4,);
          },
        ),
 */
