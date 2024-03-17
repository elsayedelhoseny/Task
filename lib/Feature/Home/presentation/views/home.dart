import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:task_jadara/Feature/Auth/data/models/active%20model/bbbbbb.dart';
import 'package:task_jadara/Feature/Cart/presentation/widgets/select_view.dart';
import 'package:task_jadara/Feature/Home/presentation/views/widgets/home_body.dart';
import 'package:task_jadara/Feature/Menu/menu_view.dart';
import 'package:task_jadara/Feature/Orders/presentation/views/order_view.dart';
import 'package:task_jadara/Feature/Product_detaiels/presentation/views/product_detaiels.dart';
import 'package:task_jadara/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, this.user});
final Bbbbbb ?user;
  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return [
        const HomeVeiwBody(),
        const CartScreen(),
        const OrdersView(),
        const ProductDetaiels(),
         MenuView(user:user! ,),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_filled),
          title: ("Home"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: CupertinoColors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon( Icons.shopping_cart),
          title: ("Settings"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: CupertinoColors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.doc_plaintext),
          title: ("Settings"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: CupertinoColors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.exclamationmark_bubble),
          title: ("Settings"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: CupertinoColors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person_alt_circle),
          title: ("Settings"),
          activeColorPrimary: kPrimaryColor,
          inactiveColorPrimary: CupertinoColors.white,
        ),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: PersistentTabView(
          context,
          controller: controller,
          screens: buildScreens(),
          items: navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: const Color(0xff043E4B), // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(16.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style13,
        ),
      ),
    );
  }
}
