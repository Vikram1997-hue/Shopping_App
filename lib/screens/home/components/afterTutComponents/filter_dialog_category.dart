import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';

class FilterDialogCategory extends StatelessWidget {
  const FilterDialogCategory(
      { Key? key,
        required this.name,
        required this.isActive }
    ) : super(key: key);

  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          backgroundColor: isActive ? primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: isActive ? Colors.white : Colors.black,
              fontSize: 15
            ),
          ),
        ),
      ),
    );



  }
}
