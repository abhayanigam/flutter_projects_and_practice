import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/linelogoandbuttons/linelogolinks.dart';
import 'package:url_launcher/url_launcher.dart';
import 'linelogoandbuttons/barbuttons.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key, required this.isTapped});
  final bool isTapped;

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {

  bool isHovered1 = false;
  bool isTapped1 = false;
  bool isHovered2 = false;
  bool isTapped2 = false;

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
                            'Work',
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
                DelayedDisplay(
                  delay: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        if (constraints.maxWidth > 900) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isTapped1 = !isTapped1;
                                      });
                                    },
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHovered1 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHovered1 = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: isTapped1 || isHovered1
                                              ? Colors.deepPurpleAccent
                                              : Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "BlackHole",
                                                      style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight: FontWeight.bold,
                                                        color: isTapped1 || isHovered1 ? Colors.white : Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8), // Add some space between the text and the image button
                                                    GestureDetector(
                                                      onTap: () async {
                                                        const url = 'https://github.com/abhayanigam/flutter_projects_and_practice/tree/master/Projects/BlackHole#readme:~:text=README.md-,BlackHole,-What%20is%20BlackHole';
                                                        if (await canLaunch(url)) {
                                                          await launch(url,
                                                              forceWebView: true,
                                                              enableJavaScript: true);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      },
                                                      child: Image.asset(
                                                        'images/Images/blackhole.png',
                                                        width: 45,
                                                        height: 45,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 1),
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "\nWhat is BlackHole? ",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: isTapped1 || isHovered1 ? Colors.white : Colors.black,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                        "\nDo you like Online Music Streaming, but tired of applications with Low Quality or Paid Subscriptions?"
                                                            "\nTried downloading via free online music sites but it's too hectic?"
                                                            "\nBlackhole is a music app created with the Purpose of high resolution music streaming experience on your phone with no advertising or paid subscriptions.\nYou can even download songs on your device An Open-Source Music Player App for all your needs!",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: isTapped1 || isHovered1 ? Colors.white : Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 3),
                                                Text(
                                                  "\nLANGUAGES & FRAMEWORKS",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: isTapped1 || isHovered1
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  "· Dart \n· Futter \n· Flutter Hive \n· API's of (Spotify, Jio Savan, YouTube & YT Music)",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: isTapped1 || isHovered1
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: const VerticalDivider(
                                    width: 20,
                                    thickness: 1,
                                    indent: 20,
                                    endIndent: 0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isTapped2 = !isTapped2;
                                      });
                                    },
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHovered2 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHovered2 = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: isTapped2 || isHovered2
                                              ? Colors.deepOrangeAccent
                                              : Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Edukan App",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  "\nWorked on a mobile based order management application. "
                                                      "\nThis application automates the process of ordering stuff from local vendors. "
                                                      "Salient features of this app are the ability to place and track order from a local vendor and share the payment and order receipts"
                                                      " on app which reduces manual order tracking and management for vendors and customers. The application was based on client-server architecture with "
                                                      "Spring Boot based REST API in the server side backed by MySQL database and Flutter based mobile app.",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                SizedBox(height: 3),
                                                Text(
                                                  "\nLANGUAGES & FRAMEWORKS",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  "· Dart \n· Futter \n· Spring Boot \n· MySql",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isTapped1 = !isTapped1;
                                      });
                                    },
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHovered1 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHovered1 = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: 500,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: isTapped1 || isHovered1
                                              ? Colors.deepPurpleAccent
                                              : Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "BlackHole",
                                                      style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight: FontWeight.bold,
                                                        color: isTapped1 || isHovered1 ? Colors.white : Colors.black,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8), // Add some space between the text and the image button
                                                    GestureDetector(
                                                      onTap: () async {
                                                        const url = 'https://github.com/abhayanigam/flutter_projects_and_practice/tree/master/Projects/BlackHole#readme:~:text=README.md-,BlackHole,-What%20is%20BlackHole';
                                                        if (await canLaunch(url)) {
                                                          await launch(url,
                                                              forceWebView: true,
                                                              enableJavaScript: true);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      },
                                                      child: Image.asset(
                                                        'images/Images/blackhole.png',
                                                        width: 45,
                                                        height: 45,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 1),
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "\nWhat is BlackHole? ",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: isTapped1 || isHovered1 ? Colors.white : Colors.black,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                        "\nDo you like Online Music Streaming, but tired of applications with Low Quality or Paid Subscriptions? "
                                                            "\nTried downloading via free online music sites but it's too hectic?"
                                                            "\nnBlackhole is a music app created with the Purpose of high resolution music streaming experience on your phone with no advertising or paid subscriptions. \nYou can even download songs on your device An Open-Source Music Player App for all your needs!",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: isTapped1 || isHovered1 ? Colors.white : Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 3),
                                                Text(
                                                  "\nLANGUAGES & FRAMEWORKS",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: isTapped1 || isHovered1
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  "· Dart \n· Futter \n· Flutter Hive \n· API's of (Spotify, Jio Savan, YouTube & YT Music)",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: isTapped1 || isHovered1
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isTapped2 = !isTapped2;
                                      });
                                    },
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHovered2 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHovered2 = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: 500,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: isTapped2 || isHovered2
                                              ? Colors.deepOrangeAccent
                                              : Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Edukan App",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  "\nWorked on a mobile based order management application. "
                                                      "\nThis application automates the process of ordering stuff from local vendors. "
                                                      "Salient features of this app are the ability to place and track order from a local vendor and share the payment and order receipts"
                                                      " on app which reduces manual order tracking and management for vendors and customers. The application was based on client-server architecture with "
                                                      "Spring Boot based REST API in the server side backed by MySQL database and Flutter based mobile app.",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                SizedBox(height: 3),
                                                Text(
                                                  "\nLANGUAGES & FRAMEWORKS",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  "· Dart \n· Futter \n· Spring Boot \n· MySql",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: isTapped2 || isHovered2
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    ),
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
