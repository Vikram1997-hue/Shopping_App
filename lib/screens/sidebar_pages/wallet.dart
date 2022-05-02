import 'package:flutter/material.dart';
import 'package:untitled/approot/sidebar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'components/row_of_completed.dart';
import 'my_orders.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarSection(iAmHere: 1,),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset("assets/icons/menu.svg"),
              );
            }
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text("Wallet"),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          CreditCardWidget(
            textStyle: TextStyle(
              fontFamily: 'Kredit',
              fontSize: 21,
              letterSpacing: 1.8
            ),
            cardNumber: '1234 5556 4785 0036',
            expiryDate: ': 04/27',
            cardHolderName: 'Vignesh Bhatnagar',
            cvvCode: '123',
            showBackView: false,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (credit) {},
            cardType: CardType.visa,
            glassmorphismConfig: Glassmorphism(
              gradient: LinearGradient(
                colors: [
                  Colors.black54,
                  Colors.red,
                  Colors.amber,
                ],
              ),
              blurX: 0,
              blurY: 0,
            ),
          ),

          SizedBox(height: 13,),

          Text("Recent Transactions (3)", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15)),
          SizedBox(height:3),
          RowOfCompleted(price: 250, name: "Henley Shirts", date: "Today", link: "https://i.imgur.com/fDwKPuo.png"),
          RowOfCompleted(price: 320, name: "Casual Shirts", date: "23 Apr, 2022", link: "https://i.imgur.com/RIwYa5a.png"),
          RowOfCompleted(price: 165, name: "Casual Nolin", date: "20 Apr, 2022", link: "https://i.imgur.com/y8oqJX3.png"),
        ],
      ),
    );
  }
}
