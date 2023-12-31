import 'package:flutter/material.dart';
import '../shop_screen/shop_screen.dart';
import 'widgets/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List _tabIcons = List.unmodifiable([
    {'icon': 'assets/icons/shop.svg', 'title': 'Shop'},
    {'icon': 'assets/icons/explore.svg', 'title': 'Explore'},
    {'icon': 'assets/icons/cart.svg', 'title': 'Cart'},
    {'icon': 'assets/icons/favorite.svg', 'title': 'Favorites'},
    {'icon': 'assets/icons/account.svg', 'title': 'Account'},
  ]);

  final List<Widget> _tabs = List.unmodifiable([
    ShopScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ]);

  void onTabChanged(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[currentIndex],
      bottomNavigationBar: NavBar(
        tabIcons: _tabIcons,
        activeIndex: currentIndex,
        onTabChanged: onTabChanged,
      ),
    );
  }
}
