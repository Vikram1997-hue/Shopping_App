import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/approot/sidebar.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/screens/auth/login.dart';
import './components/search_form.dart';
import './components/categories.dart';
import './components/entire_new_arrival_section.dart';
import './components/popular_section.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        drawer: SidebarSection(iAmHere: 0,),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset("assets/icons/menu.svg"),
              );
            }
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
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Explore", style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black)
              ),
              Text(
                "best outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(noOfCalls: 0,),
              ),
              Categories(),
              EntireNewArrivalSection(),
              SizedBox(height: defaultPadding/1.5,),
              PopularSection(),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 26,
          type: BottomNavigationBarType.fixed, //ensures no floating of currently selected BottomNavigationBarItem
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedItemColor: primaryColor,
          unselectedItemColor: Color(0xFFD0D0D0),
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IconlyLight.home, color: primaryColor,),
              activeIcon: Icon(IconlyBold.home, color: primaryColor,),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IconlyLight.buy, color: primaryColor,),
              activeIcon: Icon(IconlyBold.buy, color: primaryColor,),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IconlyLight.heart, color: primaryColor,),
              activeIcon: Icon(IconlyBold.heart, color: primaryColor,),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(IconlyLight.profile, color: primaryColor,),
              activeIcon: Icon(IconlyBold.profile, color: primaryColor,),
            ),
          ],

        ),
      ),
    );
  }
}
