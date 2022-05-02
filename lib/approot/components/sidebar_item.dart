import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/icon_with_background.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem(
      { Key? key,
        required this.name,
        required this.iconData,
        required this.isActive,
        required this.onTap
      }) : super(key: key);

  final String name;
  final IconData iconData;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        highlightColor: primaryColor.withOpacity(0.1),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconWithBackground(iconName: iconData, size: 18),
              SizedBox(width: 5),
              Text(
                name,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: isActive ? FontWeight.bold : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
