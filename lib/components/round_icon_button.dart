import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    @required this.icon,
    @required this.onPressRoundBtn,
  });

  final IconData icon;
  final Function onPressRoundBtn;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: RoundIconButtonDimensions,
      onPressed: onPressRoundBtn,
    );
  }
}
