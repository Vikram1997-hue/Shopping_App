import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';
import './components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key key,
    @required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              child: SvgPicture.asset("assets/icons/Heart.svg", height: 20),
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: [
          Image.asset(
            product.image,
            height: size.height*0.4,
            fit: BoxFit.cover,
          ),

          SizedBox(height: defaultPadding*0.75,),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                defaultPadding,
                defaultPadding*1.85,
                defaultPadding,
                defaultPadding,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(defaultBorderRadius*3),
                  topLeft: Radius.circular(defaultBorderRadius*3),
                )
              ),
              child: SingleChildScrollView(
                //default scrollDirection is Axis.vertical anyway
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ),
                        SizedBox(width: defaultPadding,),
                        Text("\u{20B9}${product.price}", style: Theme.of(context).textTheme.headline6,),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: defaultPadding,
                        bottom: defaultPadding*1.25
                      ),
                      child: Text("A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5 buttons."),
                    ),
                    Text(
                      "Colors",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: defaultPadding/2),
                    Row(
                      children: [
                        ColorDot(
                          color: Color(0xFFBEE8EA),
                          isActive: false,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xFF141B4A),
                          isActive: true,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xFFF4E5C3),
                          isActive: false,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 1.5*defaultPadding),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Add to Cart"),
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: StadiumBorder(),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

