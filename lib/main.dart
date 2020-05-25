import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen[400],
        appBar: AppBar(
          title: Text("DICEE"),
          backgroundColor: Colors.lightGreen[700],
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int Dice = 1;
  void diceChange(){
 setState(
                  () {
                    Dice = Random().nextInt(5) + 1;
                  },
                );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
               diceChange();
              },
              child: Image.asset('assets/dice$Dice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
 