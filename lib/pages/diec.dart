import 'package:flutter/material.dart';
import 'dart:math';

class Diec extends StatefulWidget {
  const Diec({super.key});

  @override
  State<Diec> createState() => _DiecState();
}

class _DiecState extends State<Diec> {
  var leftdieNumber = 1;
  var rightdieNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiePhase();
                  });
                },
                child: Image.asset("assets/dice$leftdieNumber.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDiePhase();
                  });
                },
                child: Image.asset("assets/dice$rightdieNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeDiePhase() {
    rightdieNumber = Random().nextInt(6) + 1;
    leftdieNumber = Random().nextInt(6) + 1;
  }
}
