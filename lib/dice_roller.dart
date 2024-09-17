import 'dart:math';

import 'package:flutter/material.dart';

var randomized = Random();

class dice_roller extends StatefulWidget {
  const dice_roller({super.key});

  @override
  State<dice_roller> createState() => _dice_rollerState();
}

class _dice_rollerState extends State<dice_roller> {
  var currentdice = 2;

  void rolldice() {
    setState(() {
      currentdice = randomized.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/images/dice-${currentdice}.png',
          width: 200,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 5, 1, 40),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          child: Text('Roll Dice'),
        )
      ],
    );
  }
}
