import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset(
              "assets/images/top1.png",
              width: size.width,
              alignment: Alignment.topRight,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/top2.png",
              width: size.width,
              alignment: Alignment.topRight,
            ),
          ),
          Positioned(
            top: 20,
            left: 30,
            child: Image.asset(
              "tasi.jpg",
              width: size.width,
              alignment: Alignment.topLeft,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Image.asset(
              "assets/images/bottom1.png",
              width: size.width,
              alignment: Alignment.bottomLeft,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Image.asset(
              "assets/images/bottom2.png",
              width: size.width,
              alignment: Alignment.bottomLeft,
            ),
          ),
          child
        ],
      ),
    );
  }
}
