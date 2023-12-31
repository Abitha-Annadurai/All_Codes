import 'package:flutter/material.dart';

class GridExtent extends StatefulWidget {
  const GridExtent({Key? key}) : super(key: key);

  @override
  State<GridExtent> createState() => _GridExtentState();
}

class _GridExtentState extends State<GridExtent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('GridView.extent'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              width: 250,
              height: 250,
              child: Text(
                'The Beginning',
                style: TextStyle(
                  backgroundColor: Colors.amberAccent,
                  fontSize: 10,
                  fontFamily: 'Anton',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/09/05/07/28/writing-923882_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/11/19/21/14/glasses-1052023_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/09/05/21/51/reading-925589_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2014/09/05/18/32/old-books-436498_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/09/05/21/51/reading-925589_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              width: 250,
              height: 250,
              child: Text(
                'The End',
                style: TextStyle(
                  backgroundColor: Colors.lightBlueAccent,
                  fontSize: 10,
                  fontFamily: 'Anton',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
