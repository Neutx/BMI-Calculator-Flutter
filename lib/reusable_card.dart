import 'package:flutter/material.dart';

// ignore: camel_case_types
class Reusable_card extends StatelessWidget {
  Reusable_card({@required this.colour, this.cardChild, this.onPress});

  final Function onPress;
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
