import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const EightBall());
}

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  @override
  int BallClicked = 1;

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Ask me anything",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 35),
        )),
        backgroundColor: Colors.blue[900],
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      BallClicked = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/ball$BallClicked.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
