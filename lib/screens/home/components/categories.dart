import 'package:flutter/material.dart';
import 'package:shopping_app/models/Category.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
              (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryCard(
                icon: demo_categories[index].icon,
                title: demo_categories[index].title,
                press: () {}
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon, this.title, this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding/3.8, vertical: defaultPadding/2),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            SizedBox(height: defaultPadding/2,),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
