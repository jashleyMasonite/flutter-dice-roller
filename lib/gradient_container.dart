import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.beginColor, this.endColor, {super.key});

  // Alternative constructor function
  const GradientContainer.purple({super.key})
      : beginColor = Colors.deepPurple,
        endColor = Colors.indigo;

  final Color beginColor;
  final Color endColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            beginColor,
            endColor
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}