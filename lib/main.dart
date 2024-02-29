import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNo = Random().nextInt(6)+1;
      rightDiceNo = Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset("images/dice$leftDiceNo.png"),

            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNo = Random().nextInt(6)+1;
                });
              },
              child: Image.asset("images/dice$rightDiceNo.png"),
            ),
          ),
        ],
      ),
    );
  }
}

