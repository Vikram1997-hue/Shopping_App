import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/payment/components/address_card.dart';
import 'package:untitled/screens/payment/components/checkout_billing_information.dart';
import 'package:untitled/screens/payment/components/payment_methods.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'components/payment_done.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            IconlyLight.arrowLeftCircle,
            color: Colors.grey[800],
          ),
          iconSize: 27,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            SizedBox(width: defaultPadding/2),
            Text("E/85 New Delhi",style: Theme.of(context).textTheme.subtitle2,),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: defaultPadding,),
            AddressChooser(),
            SizedBox(height: 32,),
            CheckoutBillingInformation(),
            SizedBox(height: 32,),
            PaymentMethods(),
            SizedBox(height: 16,),

            //the "slide to pay" part
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              child: SlideAction(
                sliderRotate: false,
                sliderButtonIconSize: 15,
                height: 60,
                text: 'Swipe for payment',
                textStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.white
                ),
                outerColor: primaryColor,
                innerColor: Colors.white,
                onSubmit: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => PaymentDone(),
                  ));
                },
              ),
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),

    );
  }
}

class AddressChooser extends StatelessWidget {
  const AddressChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Delivery Address",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 8,),
        AddressCard(
          label: 'Home',
          number: '(011) 4155 6567',
          address: 'E-85 Saket, New Delhi',
          isSelected: true,
        ),
        AddressCard(
          label: 'Office',
          number: '(011) 4056 4216',
          address: 'A22, Greater Kailash',
          isSelected: false,
        ),
      ],
    );
  }
}
