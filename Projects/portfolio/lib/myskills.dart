import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/linelogoandbuttons/linelogolinks.dart';
import 'linelogoandbuttons/barbuttons.dart';

class MySkillsPage extends StatefulWidget {
  const MySkillsPage({super.key, required this.isTapped});
  final bool isTapped;

  @override
  State<MySkillsPage> createState() => _MySkillsPageState();
}

class _MySkillsPageState extends State<MySkillsPage> {
  bool isHovered1 = false;
  bool isTapped1 = false;
  bool isHovered2 = false;
  bool isTapped2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const LineLogoLinks(isTapped: false),
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
                                  duration: const Duration(milliseconds: 200),
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
                                          Text(
                                            "Spring Boot Developer",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "\nI love to create efficient and scalable backend solutions using clean code principles, Spring Boot,"
                                            " and MVC architecture. Experienced in Java and MongoDB, with a proven track record of building robust applications.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "\nI LIKE TO CREATE",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · Clean Code\n · RESTful API Development\n · Security: Implementing authentication and authorization\n · Database Integration",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "\nTOOLS",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · VS Code · Eclipse ide · Intellij Idea Community Edition\n · Postman · CMD · VIM · NANO",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped1 || isHovered1
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
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · Java · Spring Boot And Spring MVC \n· Apache Camel · Apache ActiveMQ · Kibana · Elasticsearch · Apache Cordova\n · MongoDB · MySQL · PostgreSQL · DBeaver,",
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
                                            "Flutter Developer",
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
                                            "\nI specialize in developing Flutter applications, emphasizing clean and intuitive user interfaces. "
                                            "Skilled in Dart programming and crafting user-friendly mobile experiences.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "\nI LIKE TO CREATE",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · Clean Code\n · Mobile Application\n · Web Application\n · Clean UI",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "\nTOOLS",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · VS Code · Android Studio · Xcode · CMD · Git & Github",
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
                                            " · Dart  · Flutter · Firebase · Firebase",
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
                                          Text(
                                            "Spring Boot Developer",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "\nI love to create efficient and scalable backend solutions using clean code principles, Spring Boot,"
                                            " and MVC architecture. Experienced in Java and MongoDB, with a proven track record of building robust applications.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "\nI LIKE TO CREATE",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · Clean Code\n · RESTful API Development\n · Security: Implementing authentication and authorization\n · Database Integration",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "\nTOOLS",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · VS Code · Eclipse ide · Intellij Idea Community Edition\n · Postman · CMD · VIM · NANO",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped1 || isHovered1
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
                                              color: isTapped1 || isHovered1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · Java · Spring Boot And Spring MVC \n· Apache Camel · Apache ActiveMQ · Kibana · Elasticsearch · Apache Cordova\n · MongoDB · MySQL · PostgreSQL · DBeaver,",
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
                                            "Flutter Developer",
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
                                            "\nI specialize in developing Flutter applications, emphasizing clean and intuitive user interfaces. "
                                            "Skilled in Dart programming and crafting user-friendly mobile experiences.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "\nI LIKE TO CREATE",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · Clean Code\n · Mobile Application\n · Web Application\n · Clean UI",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "\nTOOLS",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: isTapped2 || isHovered2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                          Text(
                                            " · VS Code · Android Studio · Xcode · CMD · Git & Github",
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
                                            " · Dart  · Flutter · Firebase · Firebase",
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
      appBar: Barbuttons(isTapped: false),
    );
  }
}
