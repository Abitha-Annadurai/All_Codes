import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  String _value2 = '';
  void _onChanged(String value){
    setState((){
      _value2 = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Task 3'),
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(onChanged: _onChanged),
                SizedBox(height: 20,),
                Text(_value2),
              ],
            ),
          )
      ),
    );
  }
}
