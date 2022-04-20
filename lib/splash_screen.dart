import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home/home_screen.dart';
import 'constants.dart';

class SplashScreen extends StatefulWidget {
  //const ({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  void navigatetohome() async {
    await Future.delayed(Duration(seconds: 1, milliseconds: 500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ));
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 95,
              backgroundColor: Colors.grey[50],
              child: Padding(
                padding: const EdgeInsets.all(38),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            // SizedBox(height:20),
            // Text(
            //   "Shopping App".toUpperCase(),
            //   style: TextStyle(
            //     letterSpacing: 2.0,
            //     fontSize: 20,
            //     fontWeight: FontWeight.w500
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
