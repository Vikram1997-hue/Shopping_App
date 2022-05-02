import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/core/components/icon_with_background.dart';
import 'package:untitled/screens/home/home_screen.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {

  bool checkboxValue = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Form(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: IconWithBackground(iconName: IconlyBold.profile),
                  hintText: "Name"
              ),
            ),
            SizedBox(height: AppDefaults.margin,),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: IconWithBackground(iconName: IconlyBold.message,),
              ),
            ),
            SizedBox(height: AppDefaults.margin,),
            TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: IconWithBackground(iconName: IconlyBold.lock,)
              ),
            ),


            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Checkbox(
                    value: checkboxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        checkboxValue = !checkboxValue;
                      });
                    }
                   ),
                  Text('I accept all the '),
                  Text("Terms & Conditions", style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            SizedBox(height: 5,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Text("Sign Up"),
              ),
            ),
            SizedBox(height: 10,),


          ],
        ),

      ),
    );
  }
}
