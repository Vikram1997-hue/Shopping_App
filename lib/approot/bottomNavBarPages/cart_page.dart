import 'package:flutter/material.dart';
import 'package:untitled/constants/app_defaults.dart';
import 'package:untitled/core/components/icon_with_background.dart';
import 'package:untitled/core/components/network_image_loader.dart';
import 'package:untitled/screens/payment/checkout_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          title: Text("My Cart"),
        ),

        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ProductTileCart(
                    name: 'Henley Shirts',
                    price: 250,
                    coverImage: 'https://i.imgur.com/PFBRThN.png',
                    quantity: 1,
                    increaseQuantity: () {},
                    decreaseQuantity: () {},
                  ),
                  ProductTileCart(
                    name: 'Casual Shirts',
                    price: 145,
                    coverImage: 'https://i.imgur.com/fDwKPuo.png',
                    quantity: 3,
                    increaseQuantity: () {},
                    decreaseQuantity: () {},
                  ),
                  ProductTileCart(
                    name: 'Casual Nolin',
                    price: 225,
                    coverImage: 'https://i.imgur.com/1phVInw.png',
                    quantity: 1,
                    increaseQuantity: () {},
                    decreaseQuantity: () {},
                  ),
                  ProductTileCart(
                    name: 'Casual Nolin',
                    price: 225,
                    coverImage: 'https://i.imgur.com/y8oqJX3.png',
                    quantity: 1,
                    increaseQuantity: () {},
                    decreaseQuantity: () {},
                  ),
                ]
              ),
            ),


            //subtotal section
            Padding(
              padding: EdgeInsets.all(AppDefaults.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal :', style: Theme.of(context).textTheme.bodyText2,),
                  Text('\u{20B9}740', style: Theme.of(context).textTheme.headline6,),
                ],
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CheckoutPage(),
                  ));
                },
                child: Text("Checkout"),
              ),
            ),
            SizedBox(height: 16,),
          ],
        ),
      );
  }
}

class ProductTileCart extends StatelessWidget {
  const ProductTileCart(
      { Key? key,
        required this.name,
        required this.coverImage,
        required this.price,
        required this.quantity,
        this.increaseQuantity,
        this.decreaseQuantity,
      }) : super(key: key);

  final String name;
  final String coverImage;
  final double price;
  final int quantity;
  final VoidCallback? increaseQuantity;
  final VoidCallback? decreaseQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDefaults.margin,
        vertical: AppDefaults.margin/2,
      ),
      padding: EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 80,
              width: 80,
              child: NetworkImageLoader(
                src: coverImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.caption,),
                  SizedBox(height: 5),
                  Text("\u{20B9}${price.toInt()}", style: Theme.of(context).textTheme.bodyText1,),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: IconWithBackground(
                    iconName: Icons.add,
                    size: 16,
                    onTap: increaseQuantity,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Text("$quantity", style: Theme.of(context).textTheme.bodyText2,),
                ),
                Expanded(
                  child: IconWithBackground(
                    iconName: Icons.remove,
                    size: 16,
                    onTap: decreaseQuantity,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
