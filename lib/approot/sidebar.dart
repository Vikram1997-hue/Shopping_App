import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled/approot/bottomNavBarPages/cart_page.dart';
import 'package:untitled/approot/components/sidebar_item.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/auth/login.dart';
import 'package:untitled/screens/home/home_screen.dart';
import 'package:untitled/screens/sidebar_pages/about_us.dart';
import 'package:untitled/screens/sidebar_pages/my_orders.dart';
import 'package:untitled/screens/sidebar_pages/privacy_policy.dart';
import 'package:untitled/screens/sidebar_pages/settings.dart';
import 'package:untitled/screens/sidebar_pages/wallet.dart';
import 'components/header_of_sidebar.dart';


class SidebarSection extends StatelessWidget {
  const SidebarSection(
      { Key? key,
        required this.iAmHere,
      }
      ) : super(key: key);

  final int iAmHere;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: defaultPadding,
                top: defaultPadding*1.2,
                bottom: defaultPadding/3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: defaultPadding),
                    child: HeaderOfSidebar(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding/2),
                    child: Divider(),
                  ),
                  SideBarItem(
                    name: 'ShopMyFashion Home',
                    iconData: IconlyBold.home,
                    isActive: iAmHere == 0 ? true : false,
                    onTap: () => sidebarItemPress(context, index: 0),
                  ),
                  SideBarItem(
                    name: 'Wallet',
                    iconData: IconlyBold.wallet,
                    isActive: iAmHere == 1 ? true : false,
                    onTap: () => sidebarItemPress(context, index: 1),
                  ),
                  SideBarItem(
                    name: 'My Orders',
                    iconData: IconlyBold.bag,
                    isActive: iAmHere == 2 ? true : false,
                    onTap: () => sidebarItemPress(context, index: 2),
                  ),
                  SideBarItem(
                    name: 'My Cart',
                    iconData: IconlyBold.document,
                    isActive: iAmHere == 3 ? true : false,
                    onTap: () => sidebarItemPress(context, index: 3),
                  ),
                  SideBarItem(
                    name: 'Privacy Policy',
                    iconData: IconlyBold.lock,
                    isActive: iAmHere == 4 ? true : false,
                    onTap: () => sidebarItemPress(context, index: 4),
                  ),
                  SideBarItem(
                    name: 'Settings',
                    iconData: IconlyBold.setting,
                    isActive: iAmHere == 5 ? true : false,
                    onTap: () => sidebarItemPress(context, index: 5),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding/2),
                    child: Divider(),
                  ),
                  SideBarItem(
                    name: 'Log Out',
                    iconData: IconlyBold.logout,
                    isActive: false,
                    onTap: () => sidebarItemPress(context, index: 6),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void sidebarItemPress(BuildContext context, {required int index}) {

  Navigator.pop(context); //get rid of the sidebar

  switch(index) {

    case 0:
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomeScreen(),
      ));
      break;

    case 1:
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => Wallet(),
      ));
      break;

    case 2:
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => MyOrders(),
      ));
      break;

    case 3:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => CartPage(),//AboutUs(),
      ));
      break;

    case 4:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => PrivacyPolicy(),
      ));
      break;

    case 5:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => Settings(),
      ));
      break;

    case 6:
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Login(),
      ));
      break;
  }
}
