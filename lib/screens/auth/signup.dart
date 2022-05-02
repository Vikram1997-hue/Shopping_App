import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/constants/app_images.dart';
import 'package:untitled/core/components/horizontal_line.dart';
import 'package:untitled/screens/auth/components/signup_form.dart';
import 'package:untitled/screens/auth/components/social_logins.dart';
import 'login.dart';


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                AppImages.logo,
                height: 100,
              ),
              SizedBox(height: AppDefaults.margin*2),
              Text("Sign Up", style: Theme.of(context).textTheme.headline6),
              SizedBox(height: AppDefaults.margin*2),

              SignupForm(),
              Spacer(),

              //or section
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

              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
