import 'package:flutter/material.dart';
import 'package:untitled/screens/details/details_screen.dart';
import 'section_title.dart';
import 'package:untitled/models/Product.dart';
import 'product_dart.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(
                    left: 0
                  // left: defaultPadding/2,
                  // right: defaultPadding/2,
                ),
                child: NewArrivalsProduct(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: demo_product[index])
                    ));
                  },
                  color: demo_product[index].color,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
