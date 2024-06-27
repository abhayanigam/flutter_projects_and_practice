import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import Flutter SVG package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text('ag'),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      size: 35,
                    ),
                    IconButton(
                      icon: Icon(Icons.power_settings_new),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Say Hi !'),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                verticalDirection: VerticalDirection.up,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Vertical line
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        print('SVG 3');
                      },
                      child: SvgPicture.asset(
                        'images/svg/instagram-brands.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),

                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        print('SVG 2');
                      },
                      child: SvgPicture.asset(
                        'images/svg/linkedin.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        print('SVG1');
                      },
                      child: SvgPicture.asset(
                        'images/svg/github-brands.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Center widget with spinning Yin-Yang icon
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedYinYang(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Click here',style: TextStyle(color: Colors.black, fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),

        bottomNavigationBar: Container(
          height: 56, // Adjust height as needed
          color: Colors.white, // Example color
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('About tapped');
                },
                child: Container(
                  child: Text(
                    'About',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('My Skills tapped');
                },
                child: Container(
                  child: Text(
                    'My Skills',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Animated Yin-Yang Widget
class AnimatedYinYang extends StatefulWidget {
  @override
  _AnimatedYinYangState createState() => _AnimatedYinYangState();
}

class _AnimatedYinYangState extends State<AnimatedYinYang> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // Adjust the duration as needed
    )..repeat(); // Repeat the animation indefinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return RotationTransition(
          turns: _controller,
          child: GestureDetector(
            onTap: () {
              print('SVG button tapped');
            },
            child: SvgPicture.asset(
              'images/svg/yin-yang-solid.svg',
              width: 250,
              height: 250,
            ),
          ),
        );
      },
    );
  }
}


