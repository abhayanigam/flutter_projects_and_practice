import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30.0),
                  ),
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Inspiration',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                          hintText: "Search you're looking for",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    )

                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Promo Today',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 15.0,),

                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('images/one.jpg'),
                          promoCard('images/two.jpg'),
                          promoCard('images/three.jpg'),
                          promoCard('images/four.jpg'),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.0,),

                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(fit:BoxFit.cover,image : AssetImage('images/three.jpg'),)
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(begin: Alignment.bottomRight,
                              stops: [0.1,0.9],
                          colors: [
                           Colors.black.withOpacity(0.8),
                           Colors.black.withOpacity(0.2),
                          ])
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'Best Design',
                              style: TextStyle(color: Colors.white,fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image){
    return AspectRatio(
      aspectRatio: 3/3,
      child: Container(
        margin:EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight,stops: [0.1,0.9],
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.1),
            ])
          ),
        ),
      ),
    );
  }
}