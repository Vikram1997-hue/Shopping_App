import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none, //means don't show the border
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // Form(
      // child:
      TextFormField(
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
                onPressed: () {},
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
