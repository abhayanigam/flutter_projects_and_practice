import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int track}) {
    final player = AudioCache();
    player.play('note$track.wav');
  }

//https://freesound.org/
  Widget buildKey({int track, Color color}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(track: track);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(track: 1, color: Colors.red),
              buildKey(track: 2, color: Colors.green),
              buildKey(track: 3, color: Colors.blue),
              buildKey(track: 4, color: Colors.yellow),
              buildKey(track: 5, color: Colors.orange),
              buildKey(track: 6, color: Colors.pink),
              buildKey(track: 7, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
