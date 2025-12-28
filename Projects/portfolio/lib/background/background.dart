import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({super.key, required this.isTapped});
  final bool isTapped;


  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: widget.isTapped ? Colors.black : Colors.white,
          ),
        ),
        Expanded(
          child: Container(
            color: widget.isTapped ? Colors.white : Colors.white,
          ),
        ),
      ],
    );
  }
}
