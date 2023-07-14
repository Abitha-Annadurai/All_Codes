import 'package:flutter/material.dart';
import 'package:gridviewclass/zepto/screens/home_screen/home.dart';

class Zepto extends StatelessWidget {
  const Zepto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

final Map<String, Widget Function(BuildContext)> routes = {
  //ItemDetailsSreen.routeName: (_) => ItemDetailsSreen(item: ,),
};
