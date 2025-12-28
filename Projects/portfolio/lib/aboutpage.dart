import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/linelogoandbuttons/linelogolinks.dart';
import 'linelogoandbuttons/barbuttons.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key, required this.isTapped});
  final bool isTapped;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          LineLogoLinks(isTapped: true),
          DelayedDisplay(
            delay: const Duration(milliseconds: 500),
            child: Stack(
              children: [
                Row(
                  verticalDirection: VerticalDirection.down,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: screenWidth > 600
                          ? const EdgeInsets.fromLTRB(50, 10, 10, 50)
                          : const EdgeInsets.fromLTRB(20, 10, 10, 50),
                      child: Positioned(
                        child: DelayedDisplay(
                          delay: const Duration(milliseconds: 500),
                          child: Text(
                            'ABOUT',
                            style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontSize: screenWidth > 600 ? 150 : 100,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: DelayedDisplay(
                      delay: const Duration(milliseconds: 1000),
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(0, _animation.value),
                            child: child,
                          );
                        },
                        child: Image.asset(
                          'images/Images/spaceman.png',
                          width: screenWidth > 600 ? 500 : screenWidth * 0.5,
                          height: screenWidth > 600 ? 500 : screenWidth * 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                              ? 50
                              : (screenWidth > 600 ? 230.0 : 20.0),
                        ),
                        child: Container(
                          width: screenWidth > 600 ? 1000 : screenWidth * 0.9,
                          height:
                          screenHeight > 600 ? 550 : screenHeight * 0.8,
                          padding: const EdgeInsets.all(40.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Text(
                                    "Hi Everyone,\n"
                                        "I'm a Backend and Flutter Developer with a B.Tech in Computer Science from Shri Ramswaroop Memorial University. "
                                        "Currently at 1Team.ai, focusing on backend development, API creation, and Flutter app management. "
                                        "Previously at Salesken.ai, involved in developing the Salesken app and enhancing data pipelines. "
                                        "Technical skills include Java, Spring Boot, MongoDB, Flutter, Dart, and various other tools and technologies. "
                                        "Proven track record of building efficient and scalable solutions, ensuring quality standards, and contributing to seamless user experiences.",
                                    style: TextStyle(
                                      fontFamily: 'BebasNeue',
                                      fontSize: screenWidth > 600 ? 30 : 20,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: Barbuttons(isTapped: true),
    );
  }
}
