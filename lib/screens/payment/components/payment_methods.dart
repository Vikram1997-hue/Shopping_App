import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/network_image_loader.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text("Payment Methods", style: Theme.of(context).textTheme.headline6,),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PaymentMethodCard(icon: 'https://i.imgur.com/QwlchTf.png', isSelected: true),
              PaymentMethodCard(icon: 'https://i.imgur.com/KqzCSm2.png', isSelected: false),
              PaymentMethodCard(icon: 'https://i.imgur.com/4lYlKoc.png', isSelected: false),
              PaymentMethodCard(icon: 'https://i.imgur.com/vhIDtpn.png', isSelected: false),
            ],
          ),
        )
      ],
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard(
      { Key? key,
        this.methodID,
        required this.icon,
        required this.isSelected,
        this.onTap
      }) : super(key: key);

  final String? methodID;
  final String icon;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          boxShadow: [BoxShadow(
            blurRadius: 9,
            offset: Offset(4,7),
            color: Colors.black.withOpacity(0.03),
          )],
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(defaultBorderRadius),
              child: SizedBox(
                width: 54,
                height: 36,
                child: AspectRatio(
                  aspectRatio: 3/4,
                  child: NetworkImageLoader(
                    src: icon,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            if(isSelected)
              Positioned(
                right: 0,
                top: 0,
                child: Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green,
                  size: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
