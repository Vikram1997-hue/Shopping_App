import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/network_image_loader.dart';
import 'package:untitled/screens/sidebar_pages/components/row_of_completed.dart';


class CompletedTab extends StatelessWidget {
  const CompletedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:3),
        RowOfCompleted(price: 250, name: "Henley Shirts", date: "Today", link: "https://i.imgur.com/fDwKPuo.png"),
        RowOfCompleted(price: 320, name: "Casual Shirts", date: "23 Apr, 2022", link: "https://i.imgur.com/RIwYa5a.png"),
        RowOfCompleted(price: 165, name: "Casual Nolin", date: "20 Apr, 2022", link: "https://i.imgur.com/y8oqJX3.png"),
        RowOfCompleted(price: 165, name: "Casual T-Shirt", date: "20 Apr, 2022", link: "https://i.imgur.com/KexwuK9.png"),
      ],
    );
  }
}

