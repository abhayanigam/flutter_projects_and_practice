import 'package:delayed_display/delayed_display.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LineLogoLinks extends StatefulWidget {
  const LineLogoLinks({super.key, required this.isTapped});
  final bool isTapped;

  @override
  State<LineLogoLinks> createState() => _LineLogoLinksState();
}

class _LineLogoLinksState extends State<LineLogoLinks> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        verticalDirection: VerticalDirection.up,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DelayedDisplay(
            delay: Duration(seconds: 1),
            fadeIn: true,
            slidingBeginOffset: Offset.zero,
            child: Container(
              height: 80,
              width: 16,
              child: DottedLine(
                direction: Axis.vertical,
                lineLength: 80,
                lineThickness: 2,
                dashLength: 8,
                dashGapLength: 6,
                dashColor: widget.isTapped ? Colors.white : Colors.black,
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(10.0, 10.0),
          ),
          Column(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 15.0),
              DelayedDisplay(
                delay: Duration(seconds: 1),
                fadeIn: true,
                slidingBeginOffset: Offset.zero,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () async {
                      const url = 'https://github.com/abhayanigam';
                      if (await canLaunch(url)) {
                        await launch(url,
                            forceWebView: true,
                            enableJavaScript: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: SvgPicture.asset(
                      'images/svg/github-brands.svg',
                      width: 30,
                      height: 30,
                      color:
                      widget.isTapped ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              DelayedDisplay(
                delay: Duration(seconds: 1),
                fadeIn: true,
                slidingBeginOffset: Offset.zero,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.linkedin.com/in/abhaya-nigam/';
                      if (await canLaunch(url)) {
                        await launch(url,
                            forceWebView: true,
                            enableJavaScript: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: SvgPicture.asset(
                      'images/svg/linkedin.svg',
                      width: 30,
                      height: 30,
                      color:
                      widget.isTapped ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              DelayedDisplay(
                delay: Duration(seconds: 1),
                fadeIn: true,
                slidingBeginOffset: Offset.zero,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: GestureDetector(
                    onTap: () async {
                      const url =
                          'https://www.instagram.com/artistic_guruji?igsh=Nm80b2xoZWZmaXk5';
                      if (await canLaunch(url)) {
                        await launch(url,
                            forceWebView: true,
                            enableJavaScript: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: SvgPicture.asset(
                      'images/svg/instagram-brands.svg',
                      width: 30,
                      height: 30,
                      color:
                      widget.isTapped ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox.fromSize(
            size: Size(10.0, 10.0),
          ),
        ],
      ),
    );
  }
}
