import 'package:flutter/material.dart';
import 'package:untitled/models/Product.dart';
import 'package:untitled/screens/home/components/product_card.dart';


class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 192,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return search_page_products[index];
        },
        itemCount: search_page_products.length,
      ),
    );
  }
}

List<Widget> search_page_products = [
  ProductCard(
    image: 'assets/images/product_0.png',
    title: 'Long Sleeve Shirts',
    color: Color(0xFFFEFBF9),
    price: 165,
    press: () {},
    hasFavourite: true,
    isFavourite: true,
  ),
  ProductCard(
    image: 'assets/images/product_1.png',
    title: 'Casual Henley Shirts',
    color: Color(0xFFEFEFF2),
    press: () {},
    price: 99,
    hasFavourite: true,
  ),
  ProductCard(
    image: 'assets/images/product_2.png',
    title: 'Curved Hem Shirts',
    color: Color(0xFFF8FEFB),
    price: 180,
    press: () {},
    hasFavourite: true,
  ),
  ProductCard(
    image: "assets/images/product_3.png",
    title: 'Casual Nolin',
    price: 149,
    color: Color(0xFFEEEEED),
    press: () {},
    hasFavourite: true,
  ),
  ProductCard(
    image: "assets/images/product_4.png",
    title: 'Poolside Shirts',
    price: 100,
    color: Color(0xFFEFEFF2),
    press: () {},
    hasFavourite: true,
  ),
  ProductCard(
    image: "assets/images/product_5.png",
    title: 'Party Shirts',
    price: 100,
    color: Color(0xFFFEFBF9),
    press: () {},
    hasFavourite: true,
  )
];
