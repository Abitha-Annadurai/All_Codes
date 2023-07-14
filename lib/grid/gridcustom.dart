import 'package:flutter/material.dart';

class GridCustom extends StatefulWidget {
  const GridCustom({Key? key}) : super(key: key);

  @override
  State<GridCustom> createState() => _GridCustomState();
}

class _GridCustomState extends State<GridCustom> {
  List images = [
    "asset/image/apple.jpg",
    "asset/image/dragon.jpg",
    "asset/image/jack.jpg",
    "asset/image/straw.jpg",
    "asset/water.jpg",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.custom'),
        automaticallyImplyLeading: false,
      ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          childrenDelegate: SliverChildBuilderDelegate(
                (BuildContext, index){
            return Image.asset(images[index],
              fit: BoxFit.cover,
            );
          },
            childCount: 5,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        )
    );
  }
}
