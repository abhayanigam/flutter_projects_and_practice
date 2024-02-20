import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:thala_for_a_reason/cardswip.dart';

class ConfettiSample extends StatelessWidget {
  final bool reason;

  const ConfettiSample({
    Key? key,
    required this.reason,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: MyApp(reason: reason),
        ),
        onWillPop: () async {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content:
              Text('You cannot go to previous screen.'),
              backgroundColor: Colors.red,
            ),
          );
          return false;
        },
      );
  }
}

class MyApp extends StatefulWidget {
  final bool reason;

  const MyApp({
    Key? key,
    required this.reason,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ConfettiController _controllerCenter;
  late AudioPlayer _audioPlayer;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controllerCenter = ConfettiController();
    _controllerCenter.play();
    _audioPlayer = AudioPlayer();
    if (widget.reason) _audioPlayer.setSourceAsset('bole.mp3');
    if (!widget.reason) _audioPlayer.setSourceAsset('moye.mp3');
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          //CENTER -- Blast
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _controllerCenter,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
              createParticlePath: drawStar,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.reason)
                  Image.asset(
                    'assets/ms2.gif',
                    height: 250,
                    width: 250,
                  ),
                if (!widget.reason)
                  Image.asset(
                    'assets/moye.gif',
                    height: 250,
                    width: 250,
                  ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      if (isPlaying) {
                        _audioPlayer.pause();
                      } else {
                        _audioPlayer.resume();
                      }
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    },
                    child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  ),
                  SizedBox(width: 10,),
                  FloatingActionButton(
                    onPressed: () {
                      _audioPlayer.pause();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardSwip(),
                        ),
                      );
                    },
                    child: Icon(Icons.settings_backup_restore_rounded),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
