import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/home/home_screen.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckBoxIcon(iconSize: 56, innerPaddingSize: 56,),
            SizedBox(height: AppDefaults.margin*2,),
            Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Text('Congratulations!!!', style: Theme.of(context).textTheme.headline6,),
                  SizedBox(height: 8,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "You're one step closer to being your best-dressed self!",
                      style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.black45),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),

            //actions
            SizedBox(
              width: MediaQuery.of(context).size.width*0.6,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Get your receipt"),
                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                      ));
                    },
                    child: Text("Back To Home", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: primaryColor),),
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor.withOpacity(0.15),
                    ),
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

class CheckBoxIcon extends StatelessWidget {
  const CheckBoxIcon(
      { Key? key,
        this.color = primaryColor,
        this.iconSize = 48,
        this.innerPaddingSize = 32,
      }) : super(key: key);

  final Color color;
  final double iconSize;
  final double innerPaddingSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(innerPaddingSize),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: 8,
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.check_rounded,
          color: color,
          size: iconSize,
        ),
      ),
    );
  }
}
