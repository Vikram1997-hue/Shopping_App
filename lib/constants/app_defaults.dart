import 'package:flutter/material.dart';

class AppDefaults {
  static const double radius = 16.0;
  static const double margin = 16.0;
  static const double padding = 16.0;

  static BorderRadius borderRadius = BorderRadius.circular(radius);

  //since many parts of the UI use the same box shadow
  static List<BoxShadow> boxShadows = [
    BoxShadow(
      blurRadius: 15,
      offset: Offset(5, 4),
      color: Color(0x0ff33333).withOpacity(0.05),
    )
  ];
}