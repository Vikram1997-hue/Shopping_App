import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/constants/constants.dart';

class AddressCard extends StatelessWidget {
  const AddressCard(
      { Key? key,
        required this.label,
        required this.number,
        required this.address,
        required this.isSelected,
      }) : super(key: key);

  final String label;
  final String number;
  final String address;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppDefaults.margin, vertical: AppDefaults.margin/2),
      padding: EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        border: isSelected ? null : Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        boxShadow: [BoxShadow(
          blurRadius: 9,
          offset: Offset(4,7),
          color: Colors.black.withOpacity(0.03),
        )],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: isSelected ? Icon(Icons.check_circle_rounded, color: primaryColor,) : Icon(Icons.circle_outlined, color: Colors.black12,),
          ),
          SizedBox(width: AppDefaults.margin,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: Theme.of(context).textTheme.bodyText1),
              Text(number, style: Theme.of(context).textTheme.caption),
              Text(address, style: Theme.of(context).textTheme.caption,),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: isSelected ? Icon(IconlyBold.edit, color: primaryColor,) : Icon(IconlyBold.edit, color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
