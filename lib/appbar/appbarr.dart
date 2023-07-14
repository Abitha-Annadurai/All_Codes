import 'package:flutter/material.dart';

class AppBarr extends StatefulWidget {
  const AppBarr({Key? key}) : super(key: key);

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  var title = "Welcome To Flutter Class";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("AppBar"),
        leading: IconButton(
          onPressed: (){
            setState(() {
              title = "You Clicked Menu Button";
            });
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              title = "You Clicked Search Button";
            });
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            setState(() {
              title = "You Clicked Cart Button";
            });
          }, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){
            setState(() {
              title = "You Clicked Profile Button";
            });
          }, icon: Icon(Icons.person)),
        ],
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
