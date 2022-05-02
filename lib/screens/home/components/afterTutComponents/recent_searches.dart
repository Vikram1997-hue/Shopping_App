import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: TextButton( //cuz i want the whole thing to be clickable
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recent Searches", style: Theme.of(context).textTheme.bodyText1),
            Icon(
              IconlyLight.arrowRight2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
