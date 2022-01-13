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
                    width: 300,
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
    const circleWidth = 72.0;
    Path path = Path();

    path.moveTo(0, 18);
    path.lineTo(0, (size.height));
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, (18));
    path.lineTo(0, 18);
    path.addOval(Rect.fromCircle(
        center: Offset(size.width / 2, (size.height / 2) - 14),
        radius: circleWidth / 2));
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
