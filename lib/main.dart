import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber;
  @override
  Widget build(BuildContext context) {
    changeBallNumber();
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
          child: TextButton(
        onPressed: () => changeBallNumber(),
        child: Image.asset('images/ball$ballNumber.png'),
      )),
      backgroundColor: Colors.blue,
    );
  }

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
