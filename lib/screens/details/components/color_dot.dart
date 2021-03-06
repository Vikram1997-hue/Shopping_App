import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color, this.isActive, this.press,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(defaultPadding/4.2),
        decoration: BoxDecoration(
          border: Border.all(color: isActive ? primaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
