import 'package:flutter/material.dart';
import 'package:untitled/approot/sidebar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/core/components/network_image_loader.dart';

import 'components/cancelled_tab.dart';
import 'components/completed_tab.dart';


class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: bgColor,
        drawer: SidebarSection(iAmHere: 2,),
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
            child: Text("My Orders"),
          ),
          centerTitle: true,

          bottom: TabBar(
            indicatorWeight: 5,
            indicatorColor: primaryColor,
            tabs: [
              Tab(text: "Completed"),
              Tab(text: "Cancelled",)
            ],
          ),
        ),



        body: TabBarView(
          children: [
            CompletedTab(),
            CancelledTab(),
          ],
        ),
      ),
    );
  }
}
