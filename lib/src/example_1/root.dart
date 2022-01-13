import 'package:flutter/material.dart';

class Example1RootWidget extends StatelessWidget {
  const Example1RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
