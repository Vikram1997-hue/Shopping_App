import 'package:flutter/material.dart';
import 'package:untitled/approot/sidebar.dart';
import 'package:flutter_svg/svg.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarSection(iAmHere: 4,),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset("assets/icons/menu.svg"),
              );
            }
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text("Privacy Policy"),
        ),
        centerTitle: true,
      ),
    );
  }
}
