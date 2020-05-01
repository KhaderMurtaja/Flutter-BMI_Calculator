import 'package:flutter/material.dart';
import '../constants.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget({@required this.fontIcon, @required this.fontType});

  final IconData fontIcon;
  final String fontType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          fontIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          fontType,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
