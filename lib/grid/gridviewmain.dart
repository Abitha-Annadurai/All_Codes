import 'package:flutter/material.dart';

class GridviewMain extends StatefulWidget {
  const GridviewMain({Key? key}) : super(key: key);

  @override
  State<GridviewMain> createState() => _GridviewMainState();
}

class _GridviewMainState extends State<GridviewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        automaticallyImplyLeading: false,
      ),
    body:  GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      primary: false,
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tile 1"),
          color: Colors.orange[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tile 2"),
          color: Colors.green[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tile 3"),
          color: Colors.red[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tile 4"),
          color: Colors.purple[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tile 5"),
          color: Colors.blueGrey[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("Tile 6"),
          color: Colors.yellow[200],
        ),
      ],
    ),
    );
  }
}
