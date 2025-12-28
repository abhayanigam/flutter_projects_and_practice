import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/animated_yin_yang.dart';
import 'package:portfolio/background/background.dart';
import 'package:portfolio/exppage.dart';
import 'package:portfolio/linelogoandbuttons/bottombuttons.dart';
import 'package:portfolio/workpage.dart';
import 'linelogoandbuttons/barbuttons.dart';
import 'linelogoandbuttons/linelogolinks.dart';

class Commonpage extends StatefulWidget {
  const Commonpage({super.key});
  static const String routeName = '/';
  @override
  State<Commonpage> createState() => _CommonpageState();
}

class _CommonpageState extends State<Commonpage> {
  bool _isTapped = false;
  Color _backgroundColor = Colors.white;

  void updateBackground(bool isTapped) {
    setState(() {
      _isTapped = isTapped;
      _backgroundColor = isTapped ? Colors.black : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: Barbuttons(isTapped: _isTapped),
        body: Stack(
          children: [
            Background(isTapped: _isTapped),
            Stack(
              children: [
                Background(isTapped: _isTapped),
                Stack(
                  children: [
                    LineLogoLinks(isTapped: _isTapped),
                    AnimatedYinYang(
                      isTapped: _isTapped,
                      onTap: () {
                        setState(() {
                          _isTapped = !_isTapped;
                        });
                      },
                      updateBackground: updateBackground,
                    ),
                    // Work Button
                    Align(
                      alignment: Alignment.centerLeft,
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        fadeIn: true,
                        slidingBeginOffset: Offset.zero,
                        child: Transform.rotate(
                          angle: 4.71239, // 270 degrees in radians
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        WorkPage(isTapped: true),
                                  ),
                                );
                              },
                              child: Text(
                                'Work',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      _isTapped ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Exp. Button
                    Align(
                      alignment: Alignment.centerRight,
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        fadeIn: true,
                        slidingBeginOffset: Offset.zero,
                        child: Transform.rotate(
                          angle: 7.85398, // 450 degrees in radians
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ExpPage(isTapped: true),
                                  ),
                                );
                              },
                              child: Text(
                                'Exp.',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Square card to display with delay when AnimatedYinYang is tapped
                    if (_isTapped)
                      DelayedDisplay(
                        delay: Duration(seconds: 1),
                        fadeIn: true,
                        slidingBeginOffset: Offset.zero,
                        child: Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(90, 10, 90, 10),
                            child: Flexible(
                              child: Card(
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 1000,
                                  height: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        // Determine if the layout should be a Row or Column based on the available width
                                        bool isWide =
                                            constraints.maxWidth > 600;
                                        return isWide
                                            ? Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.all(
                                                          16), // Add some padding if needed
                                                      child: Center(
                                                        // Center the text vertically
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize
                                                              .min, // Center the column content
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'Hi,\n',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          55,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "I'm Abhaya Nigam.\n",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          45,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "I design and develop efficient, responsive, and elegant backend services and applications.",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const VerticalDivider(
                                                    width: 20,
                                                    thickness: 1,
                                                    indent: 20,
                                                    endIndent: 0,
                                                    color: Colors.grey,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Stack(
                                                        children: [
                                                          // Background text with low opacity
                                                          Center(
                                                            child: Text(
                                                              'AN',
                                                              style: TextStyle(
                                                                color: Colors.black.withOpacity(0.1), // Very low opacity
                                                                fontSize: 190,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                          // Main content
                                                          Padding(
                                                            padding: EdgeInsets.all(
                                                                16), // Add some padding if needed
                                                            child: Center(
                                                              child: Container(
                                                                child: Image.asset(
                                                                    'images/Images/portrait.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.all(
                                                          5), // Add some padding if needed
                                                      child: Center(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'Hi,\n',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          38,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "I'm Abhaya Nigam.\n",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          30,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "I develop efficient, responsive, and elegant backend services and applications.",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          18,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Divider(
                                                    height: 20,
                                                    thickness: 1,
                                                    indent: 20,
                                                    endIndent: 0,
                                                    color: Colors.grey,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      child: Stack(
                                                        children: [
                                                          // Background text with low opacity
                                                          Center(
                                                            child: Text(
                                                              'AN',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.1), // Very low opacity
                                                                fontSize: 118,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                          // Main content
                                                          Padding(
                                                            padding: EdgeInsets.all(
                                                                5), // Add some padding if needed
                                                            child: Center(
                                                              child: Container(
                                                                child: Image.asset(
                                                                    'images/Images/portrait.png'),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Bottombuttons(isTapped: _isTapped),
      ),
    );
  }

  Widget buildSplitBackground(BuildContext context, bool isTapped) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: isTapped ? Colors.black : Colors.white, // First half color
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              color:
                  isTapped ? Colors.white : Colors.white, // Second half color
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
        ),
      ],
    );
  }
}
