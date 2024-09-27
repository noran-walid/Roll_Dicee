import 'package:flutter/material.dart';

import 'dice_roller.dart';

var startAlignment = Alignment.centerRight;
var endAlignment = Alignment.centerLeft;

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {


  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.lightBlueAccent,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [Colors.cyan, Colors.white],
            begin: startAlignment,
            end: endAlignment,
          )),
      child: const Center(
        child: DiceRoller(),
      ),);
  }
}
Widget myCustomText(String msg) {
  return Text(
    msg,
    style: const TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
  );
}