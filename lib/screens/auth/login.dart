import 'package:flutter/material.dart';
import 'package:untitled/core/components/custom_network_image.dart';
import 'package:untitled/core/components/horizontal_line.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/icon_with_background.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/screens/auth/components/social_logins.dart';
import 'package:untitled/screens/auth/signup.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              "assets/images/logo.png",
              height: 100,
            ),
            Spacer(),
            Text("Login", style: Theme.of(context).textTheme.headline6),
            Spacer(),


            Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Form(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: IconWithBackground(iconName: IconlyBold.message),
                        labelText: "Email",
                        hintText: "yourname@email.com",
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: IconWithBackground(iconName: IconlyBold.lock,),
                        labelText: "Password",
                        hintText: "Use A-Z, a-z, 0-9, @, *, etc.",
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?", style: TextStyle(color: primaryColor),)
                      ),
                    ),

                    SizedBox(
                      width: size.width*0.5,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Log In"),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            //Or section
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HorizontalLine(width: 100),
                Text("Or", style: TextStyle(color: Colors.grey),),
                HorizontalLine(width: 100),
              ],
            ),
            Spacer(),
            SocialLogins(),
            Spacer(),

            //the "don't have an account?" section
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don\'t have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Signup(),
                      ));
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
