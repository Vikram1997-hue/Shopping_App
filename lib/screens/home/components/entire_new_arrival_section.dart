import 'package:flutter/material.dart';
import 'section_title.dart';
import 'package:shopping_app/models/Product.dart';
import 'product_dart.dart';

class EntireNewArrivalSection extends StatelessWidget {
  const EntireNewArrivalSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "New Arrivals",),
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
                  press: () {},
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