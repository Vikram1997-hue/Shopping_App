import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine(
      {Key? key,
       required this.width,
       this.height = 1,}
    ) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      color: Colors.grey,
    );
  }
}
