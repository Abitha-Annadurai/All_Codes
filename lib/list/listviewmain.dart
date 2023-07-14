import 'package:flutter/material.dart';

class ListviewMain extends StatefulWidget {
  const ListviewMain({Key? key}) : super(key: key);

  @override
  State<ListviewMain> createState() => _ListviewMainState();
}

class _ListviewMainState extends State<ListviewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.purple[800],
            child: const Center(child: Text('Apple')),
          ),
          Container(
            height: 50,
            color: Colors.indigo[600],
            child: const Center(child: Text('Banana')),
          ),
          Container(
            height: 50,
            color: Colors.green[400],
            child: const Center(child: Text('Mango')),
          ),
          Container(
            height: 50,
            color: Colors.lime[200],
            child: const Center(child: Text('Orange')),
          ),
          Container(
            height: 50,
            color: Colors.red[800],
            child: const Center(child: Text('sunflower')),
          ),
          Container(
            height: 50,
            color: Colors.yellow[600],
            child: const Center(child: Text('Jack')),
          ),
          Container(
            height: 50,
            color: Colors.orange[400],
            child: const Center(child: Text('Graps')),
          ),
          Container(
            height: 50,
            color: Colors.blue[200],
            child: const Center(child: Text('lemon')),
          )
        ],
      ),
    );
  }
}
