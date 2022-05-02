import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/constants/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.color,
    required this.price,
    required this.press,

    this.hasFavourite = false,
    this.isFavourite = false,
    this.onFavouriteClicked,
  }) : super(key: key);

  final String image, title;
  final Color color;
  final int price;
  final VoidCallback press;

  //these ones are only used in search results
  final bool hasFavourite;
  final bool isFavourite;
  final VoidCallback? onFavouriteClicked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: hasFavourite ? MediaQuery.of(context).size.width : 154, //MAKE THIS A ??
        padding: EdgeInsets.all(defaultPadding/2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  child: Image.asset(
                    image,
                    height: 132,
                  ),
                ),

                if(hasFavourite)
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Icon(
                      isFavourite ? IconlyBold.heart : IconlyLight.heart,
                      size: 21,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: defaultPadding/2.2,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: defaultPadding/4,),
                Text("\u{20B9}$price", style: Theme.of(context).textTheme.subtitle2,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

