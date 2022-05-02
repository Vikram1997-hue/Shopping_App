import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/constants/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/screens/home/components/afterTutComponents/search_results.dart';
import 'package:untitled/screens/home/components/search_form.dart';
import 'afterTutComponents/recent_searches.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
      Key? key,
      required this.searchedValue,
      required this.noOfCalls,
     }
    ) : super(key: key);

  final String searchedValue;
  final int noOfCalls;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              IconlyLight.arrowLeftCircle,
              color: Colors.grey[800],
            ),
            iconSize: 27,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              SizedBox(width: defaultPadding/2),
              Text("E/85 New Delhi",style: Theme.of(context).textTheme.subtitle2,),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"),
            )
          ],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: defaultPadding/2,),
            SearchForm(noOfCalls: noOfCalls,),
            RecentSearches(),
            Divider(),
            SizedBox(height: defaultPadding/2,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDefaults.padding*1.5),
              child: Text(
                "Showing search results for '$searchedValue'",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(height: AppDefaults.padding,),
            SearchResults(),
          ],
        ),
      ),
    );
  }
}
