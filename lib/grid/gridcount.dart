import 'package:flutter/material.dart';

class GridCount extends StatefulWidget {
  const GridCount({Key? key}) : super(key: key);

  @override
  State<GridCount> createState() => _GridCountState();
}

class _GridCountState extends State<GridCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: [
              Card(
                color: Colors.teal,
              ),
              Card(
                color: Colors.cyan,
              ),
              Card(
                color: Colors.yellowAccent,
              ),
              Card(
                color: Colors.deepOrange,
              ),
              Card(
                color: Colors.red,
              ),
              Card(
                color: Colors.yellow,
              ),
              Card(
                color: Colors.purpleAccent,
              ),
              Card(
                color: Colors.indigo,
              ),
              Card(
                color: Colors.black,
              ),
              Card(
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
