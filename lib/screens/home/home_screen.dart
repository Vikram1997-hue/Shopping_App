import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            SizedBox(width: defaultPadding/2),
            Text("E/85 New Delhi",style: Theme.of(context).textTheme.subtitle2,),

          ],
        ),
      ),
    );
  }
}
