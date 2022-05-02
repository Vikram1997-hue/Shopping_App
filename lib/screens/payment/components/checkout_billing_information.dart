import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';

class CheckoutBillingInformation extends StatelessWidget {
  const CheckoutBillingInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text("Billing Information", style: Theme.of(context).textTheme.headline6,),
        ),
        Container(
          margin: EdgeInsets.all(AppDefaults.margin),
          padding: EdgeInsets.all(AppDefaults.padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            boxShadow: [BoxShadow(
              blurRadius: 9,
              offset: Offset(4,7),
              color: Colors.black.withOpacity(0.03),
            )],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Delivery Fee     :", style: Theme.of(context).textTheme.bodyText2,),
                  Spacer(),
                  Text("\u{20B9}50", style: Theme.of(context).textTheme.bodyText1,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Subtotal     :", style: Theme.of(context).textTheme.bodyText2,),
                  Spacer(),
                  Text("\u{20B9}740", style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              SizedBox(height: 10,),
              Divider(),
              Row(
                children: [
                  Text("Total           :", style: Theme.of(context).textTheme.bodyText2,),
                  Spacer(),
                  Text("\u{20B9}790", style: Theme.of(context).textTheme.bodyText1,),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
