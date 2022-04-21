import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/components/icon_with_background.dart';
import 'package:flutter_iconly/flutter_iconly.dart';


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
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(27)),
                          )
                        ),
                        child: Text("Log In"),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
