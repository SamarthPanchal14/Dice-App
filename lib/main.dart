import 'package:flutter/material.dart';
import 'package:projectwo/gradient.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(Colors.deepOrange, Colors.white, Colors.green),
    ),
  ));
}
