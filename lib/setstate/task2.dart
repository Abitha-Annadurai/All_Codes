import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  String _value1 = '';
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Task 2"),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(controller: nameController),
                IconButton(
                    onPressed: (){
                      setState((){
                        _value1 = nameController.text;
                      });
                    },
                    icon: Text('Click')
                ),
                Text(_value1),
              ],
            )
        ),
      ),
    );
  }
}
