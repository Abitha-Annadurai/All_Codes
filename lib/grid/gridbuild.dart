import 'package:flutter/material.dart';

class GridBuild extends StatefulWidget {
  const GridBuild({Key? key}) : super(key: key);

  @override
  State<GridBuild> createState() => _GridBuildState();
}

class _GridBuildState extends State<GridBuild> {
  List images = ["asset/image/apple.jpg",
    "asset/image/dragon.jpg",
    "asset/image/jack.jpg",
    "asset/image/straw.jpg", "asset/image/bike1.jpg", "asset/image/bike2.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder'),
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),

        itemBuilder: (BuildContext context, int index) {
          return Image.asset(images[index]);
        },
      ),

    );
  }
}
