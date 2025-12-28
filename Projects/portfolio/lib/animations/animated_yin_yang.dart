import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedYinYang extends StatefulWidget {
  final bool isTapped;
  final VoidCallback onTap;
  final Function(bool) updateBackground;

  const AnimatedYinYang({
    required this.isTapped,
    required this.onTap,
    required this.updateBackground,
  });

  @override
  _AnimatedYinYangState createState() => _AnimatedYinYangState();
}

class _AnimatedYinYangState extends State<AnimatedYinYang>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(seconds: 1),
          bottom: widget.isTapped
              ? 0
              : MediaQuery.of(context).size.height / 2 - 210,
          right: widget.isTapped
              ? 0
              : MediaQuery.of(context).size.width / 2 - 125,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.onTap();
                  widget.updateBackground(!widget.isTapped);
                },
                child: RotationTransition(
                  turns: _controller,
                  child: Padding(
                    padding: EdgeInsets.all(widget.isTapped ? 10.0 : 0),
                    child: SvgPicture.asset(
                      'images/svg/yin-yang-solid.svg',
                      width: widget.isTapped ? 90 : 250,
                      height: widget.isTapped ? 90 : 250,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              if (!widget.isTapped &&
                  MediaQuery.of(context).size.width > 300)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Click here',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }


}
