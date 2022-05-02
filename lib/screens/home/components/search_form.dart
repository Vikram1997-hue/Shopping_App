import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/home/components/afterTutComponents/filter_dialog.dart';
import 'package:untitled/screens/home/components/search_page.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none, //means don't show the border
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    required this.noOfCalls,
  }) : super(key: key);

  final int noOfCalls;


  @override
  Widget build(BuildContext context) {
    return
      // Form(
      // child:
      TextFormField(

        onFieldSubmitted: (v) {
          if(noOfCalls == 0) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) =>
                  SearchPage(searchedValue: v, noOfCalls: noOfCalls+1), //
            ));
          }

          else {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => SearchPage(searchedValue: v, noOfCalls: noOfCalls),
            ));
          }
        },


        decoration: InputDecoration(
          hintText: "Search items...",
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
            child: SizedBox(
              height: 48,
              width: 48,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => FilterDialog(),
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppDefaults.padding*2),
                        topRight: Radius.circular(AppDefaults.padding*2)
                      )
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(defaultBorderRadius),
                        )
                    )
                ),
                child: SvgPicture.asset("assets/icons/Filter.svg"),
              ),
            ),
          ),
        ),
      ); //,
    //);
  }
}
