import 'package:flutter/material.dart';
import 'constants/constants.dart';

class AppTheme {
  final BuildContext context;
  AppTheme(this.context);

  String myDefaultFont = "Gordita";

  ThemeData get customTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: bgColor,
      colorScheme: ColorScheme.fromSwatch(accentColor: primaryColor),
      brightness: Brightness.light,
      fontFamily: myDefaultFont,

      textTheme: ThemeData.light().textTheme.apply(
        fontFamily: myDefaultFont,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          minimumSize: Size(double.infinity, 40),
          elevation: 0,
          shape: StadiumBorder(),
          padding: EdgeInsets.all(defaultPadding),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primaryColor),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: AppDefaults.borderRadius,
          borderSide: BorderSide.none,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontFamily: 'Avenir'),
        iconTheme: IconThemeData(color: defaultBlack),
      ),

      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        padding: EdgeInsets.all(16),
      ),

      sliderTheme: SliderThemeData(
        thumbColor: primaryColor,
        activeTrackColor: primaryColor,
      ),

      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}