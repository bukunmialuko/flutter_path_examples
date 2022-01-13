import 'package:flutter/material.dart';

class Example1RootWidget extends StatelessWidget {
  const Example1RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Stack(
              children: [
                // Container(
                //   width: 300,
                //   height: 100,
                //   color: Colors.yellow,
                // ),
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    width: 400,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.58, size.height / 5);
    path.cubicTo(size.width * 0.56, size.height * 0.08, size.width * 0.53, 0,
        size.width / 2, 0);
    path.cubicTo(size.width * 0.47, 0, size.width * 0.44, size.height * 0.08,
        size.width * 0.42, size.height / 5);
    path.cubicTo(size.width * 0.42, size.height / 5, 0, size.height / 5, 0,
        size.height / 5);
    path.cubicTo(0, size.height / 5, 0, size.height, 0, size.height);
    path.cubicTo(
        0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height / 5,
        size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width * 0.58,
        size.height / 5, size.width * 0.58, size.height / 5);
    path.cubicTo(size.width * 0.58, size.height / 5, size.width * 0.58,
        size.height / 5, size.width * 0.58, size.height / 5);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
