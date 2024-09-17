import 'package:flutter/material.dart';
import 'package:projectwo/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(Context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2, color3],
            begin: startAlignment,
            end: endAlignment),
      ),
      alignment: Alignment.center,
      child: dice_roller(),
    );
  }
}
