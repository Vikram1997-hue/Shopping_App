import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/home/home_screen.dart';
import 'package:untitled/splash_screen.dart';
import 'package:untitled/theme.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      home: HomeScreen(), //SplashScreen(), //HomeScreen(),
      theme: AppTheme(context).customTheme,
    );
  }
}

