import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Center(
              child: Text(
            'Ask Me Anything',
          )),
          backgroundColor: Colors.blue[900],
        ),
        body: magic(),
      ),
    ),
  );
}

class magic extends StatefulWidget {
  const magic({Key? key}) : super(key: key);

  @override
  State<magic> createState() => _magicState();
}

class _magicState extends State<magic> {
  int x = 1;
  void magicball() {
    setState(() {
      x = Random().nextInt(5) + 1;

    });
  }
  @override

  Widget build(BuildContext context) {
    return Center(
      child:
      Expanded(
          child: TextButton(
            onPressed: () {
              magicball();
            },
            child: Image.asset('images/ball$x.png'),
          ),
        ),

    );
  }
}
