import 'package:audioplayers/audioplayers.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/CommonPage.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../audioprovider.dart';

class Barbuttons extends StatelessWidget implements PreferredSizeWidget {
  const Barbuttons({super.key, required this.isTapped});
  final bool isTapped;

  @override
  Widget build(BuildContext context) {
    var audioProvider = Provider.of<AudioProvider>(context);
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: buildSplitBackground(context, isTapped),
      title: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: DelayedDisplay(
              delay: Duration(seconds: 1),
              fadeIn: true,
              slidingBeginOffset: Offset.zero,
              child: Row(
                children: [
                  Text(
                    'an',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: isTapped ? Colors.white : Colors.black,
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(seconds: 1),
                    fadeIn: true,
                    slidingBeginOffset: Offset.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.music_note,
                          size: 35,
                          color: isTapped ? Colors.white : Colors.black,
                        ),
                        onPressed: () {
                          audioProvider.togglePlayPause();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  fadeIn: true,
                  slidingBeginOffset: Offset.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.circle_outlined,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  fadeIn: true,
                  slidingBeginOffset: Offset.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        if (ModalRoute.of(context)?.settings.name != Commonpage.routeName) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Commonpage(),
                              settings: RouteSettings(name: Commonpage.routeName),
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
          Align(
            alignment: Alignment.centerRight,
            child: DelayedDisplay(
              delay: Duration(seconds: 1),
              fadeIn: true,
              slidingBeginOffset: Offset.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () async {
                    final Uri _emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'abhaya.nigam13@gmail.com',
                    );
                    String urlString = _emailLaunchUri.toString();
                    if (await canLaunch(urlString)) {
                      await launch(urlString);
                    } else {
                      throw 'Could not launch $urlString';
                    }
                  },
                  child: Text(
                    'Say Hi !',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: isTapped ? (ModalRoute.of(context)?.settings.name != Commonpage.routeName ? Colors.white : Colors.black) : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSplitBackground(BuildContext context, bool isTapped) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: isTapped ? Colors.black : Colors.white,
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              color: isTapped ? (ModalRoute.of(context)?.settings.name != Commonpage.routeName ? Colors.black : Colors.white) : Colors.white,
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
