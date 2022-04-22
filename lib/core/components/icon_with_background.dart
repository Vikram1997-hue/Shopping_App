import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';

class IconWithBackground extends StatelessWidget {
  const IconWithBackground({
    Key? key,
    required this.iconName,
    this.color,
    this.iconColor,
    this.size,
    this.onTap,
    this.radius}
  ) : super(key: key);

  final IconData iconName;
  final Color? color;
  final Color? iconColor;
  final double? size;
  final void Function()? onTap;
  final BorderRadiusGeometry? radius;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: radius ?? BorderRadius.all(Radius.circular(8.0)),
        color: color ?? primaryColor.withOpacity(0.1),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              iconName,
              color: iconColor ?? Color(0xFFF67952),
              size: size
            ),
          ),
        ),
      ),
    );
  }
}
