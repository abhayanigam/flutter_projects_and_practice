import 'package:delayed_display/delayed_display.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/aboutpage.dart';

import '../myskills.dart';

class Bottombuttons extends StatefulWidget {
  const Bottombuttons({super.key, required this.isTapped});
  final bool isTapped;

  @override
  State<Bottombuttons> createState() => _BottombuttonsState();
}

class _BottombuttonsState extends State<Bottombuttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(isTapped: true),
                      ),
                    );
                  },
                  child: Container(
                    color: widget.isTapped ? Colors.black : Colors.white,
                    alignment: Alignment.center,
                    child: DelayedDisplay(
                      delay: Duration(seconds: 1),
                      fadeIn: true,
                      slidingBeginOffset: Offset.zero,
                      child: Text(
                        'About',
                        style: TextStyle(
                          color: widget.isTapped ? Colors.white : Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MySkillsPage(isTapped: true),
                      ),
                    );
                  },
                  child: Container(
                    color: widget.isTapped ? Colors.white : Colors.white,
                    alignment: Alignment.center,
                    child: DelayedDisplay(
                      delay: Duration(seconds: 1),
                      fadeIn: true,
                      slidingBeginOffset: Offset.zero,
                      child: Text(
                        'My Skills',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: VerticalDivider(
                    width: 13.9,
                    thickness: 2,
                    indent: 5,
                    endIndent: 0,
                    color: Colors.transparent,
                  ),
                ),
              ),
              DelayedDisplay(
                delay: Duration(seconds: 1),
                fadeIn: true,
                slidingBeginOffset: Offset.zero,
                child: Container(
                  height: 50,
                  width: 16,
                  child: DottedLine(
                    direction: Axis.vertical,
                    lineLength: 50,
                    lineThickness: 2,
                    dashLength: 8,
                    dashGapLength: 6,
                    dashColor: widget.isTapped ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
