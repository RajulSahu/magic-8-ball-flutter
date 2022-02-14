import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue.shade800,
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything'),
            ),
            backgroundColor: Colors.blue.shade900,
          ),
          body: AppBody(),
        ),
      ),
    );

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int faceNumber = Random().nextInt(6) + 1;

  void changeBall() {
    setState(() {
      faceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              changeBall();
            },
            child: Image(
              image: AssetImage('images/ball$faceNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
