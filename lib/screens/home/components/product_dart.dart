import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class NewArrivalsProduct extends StatelessWidget {
  const NewArrivalsProduct({
    Key? key,
    required this.image,
    required this.title,
    required this.color,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Color color;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(defaultPadding/2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: Column(
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

