import 'package:flutter/material.dart';

class Builder1 extends StatefulWidget {
  const Builder1({Key? key}) : super(key: key);

  @override
  State<Builder1> createState() => _Builder1State();
}

class _Builder1State extends State<Builder1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Count'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text("number",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("Count $index"));
          }),
    );
  }
}
