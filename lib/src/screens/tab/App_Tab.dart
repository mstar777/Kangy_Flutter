
import 'package:kangy_flutter/src/screens/Home.dart';
import 'package:kangy_flutter/src/screens/MyActivities.dart';
import 'package:kangy_flutter/src/screens/Search.dart';
import 'package:kangy_flutter/src/screens/ActivityBasket.dart';

import 'package:kangy_flutter/src/Constants/HexColor.dart';
import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class AppTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppTabState();
}

class AppTabState extends State<AppTab> {

  PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),

      SearchScreen(),

      MyActivitiesScreen(),

      ActivityBasketScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        // icon:ImageIcon(AssetImage('assets/icons/Home.png'), size: 50,),
        title: "Home",
        icon: Icon(Icons.home,size: 24,),
        inactiveColor: HexColor("#cecece"),
        activeColor: Colors.white,
      ),
      PersistentBottomNavBarItem(
        // icon:ImageIcon(AssetImage("assets/icons/Search.png"), size: 34,),
        icon: Icon(Icons.person_search_rounded,size: 24,),
        title: "Search",
        inactiveColor: HexColor("#cecece"),
        activeColor: Colors.white,
      ),
      PersistentBottomNavBarItem(
        // icon:ImageIcon(AssetImage("assets/icons/MyActivities.png"), size: 50,),
        icon: Icon(Icons.volunteer_activism,size: 24,),
        title: "My Activities",
        inactiveColor: HexColor("#cecece"),
        activeColor: Colors.white,
      ),
      PersistentBottomNavBarItem(
        // icon:ImageIcon(AssetImage("assets/icons/ActivityBasket.png"), size: 50,),
        icon: Icon(Icons.shopping_basket_outlined,size: 24,),
        title: "Activity Basket",
        inactiveColor: HexColor("#cecece"),
        activeColor: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      navBarHeight: 60, // default = 56,
      backgroundColor: HexColor("#C88A3D"),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: false, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }


}
