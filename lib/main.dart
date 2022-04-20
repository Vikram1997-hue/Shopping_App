import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/home/home_screen.dart';
import 'package:shopping_app/splash_screen.dart';


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

      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
        // textTheme: Theme.of(context).textTheme.apply(
        //   bodyColor: Colors.black54,
        //   fontFamily: "Gordita",
        // ),
      ),
      home: SplashScreen(), //HomeScreen(),
    );
  }
}

