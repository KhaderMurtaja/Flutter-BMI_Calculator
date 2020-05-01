import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({
    @required this.chosenColor,
    this.cardChild,
    this.onPress,
  });

  final Color chosenColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: chosenColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
