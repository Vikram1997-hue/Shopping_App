import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/approot/sidebar.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/icon_with_background.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarSection(iAmHere: 5,),
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
          child: Text("Settings"),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Divider(),
          SettingsRowTemplate(iconName: IconlyBold.message, text: "Email Support", hasSwitch: false,),
          SettingsRowTemplate(iconName: IconlyBold.infoSquare, text: "FAQ", hasSwitch: false,),
          SettingsRowTemplate(iconName: IconlyBold.lock, text: "Privacy Statements", hasSwitch: false,),
          SettingsRowTemplate(iconName: IconlyBold.notification, text: "Notification", hasSwitch: true,),
          SettingsRowTemplate(iconName: IconlyBold.paperUpload, text: "Update", hasSwitch: true,),
        ],

      ),
    );
  }
}

class SettingsRowTemplate extends StatefulWidget {
  const SettingsRowTemplate(
      { Key? key,
        required this.iconName,
        required this.text,
        required this.hasSwitch,
      }
      ) : super(key: key);

  final IconData iconName;
  final String text;
  final bool hasSwitch;

  @override
  _SettingsRowTemplateState createState() => _SettingsRowTemplateState();
}

class _SettingsRowTemplateState extends State<SettingsRowTemplate> {

  bool defaultSwitchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding/2,),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconWithBackground(iconName: widget.iconName),
            SizedBox(width: defaultPadding,),
            Text(widget.text, style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16),),
            Spacer(),
            if(widget.hasSwitch)
              CupertinoSwitch(
                onChanged: (bool value) {
                  setState(() {
                    defaultSwitchValue = value;
                  });
                },
                value: defaultSwitchValue,
                activeColor: primaryColor,
              )
            else
              Icon(IconlyLight.arrowRight2, color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
