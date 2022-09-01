import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  updateDices();
                  print('left button was clicked');
                },
                child: Image.asset("images/dice${leftImageNumber}.png",
                ),
              ),
            ),

            Expanded(
              child: TextButton(
                  onPressed: (){
                    updateDices();
                    print('right button was clicked');
                  },
                  child: Image.asset("images/dice$rightImageNumber.png",)),),

          ],
        ),
      ),
    );
  }

  void updateDices() {
    setState((){
      rightImageNumber = Random().nextInt(5) + 1;
      leftImageNumber = Random().nextInt(5) + 1;
    });
  }
}
