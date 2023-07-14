import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  String resulttext = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Task 4'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  keyboardType: TextInputType.number ,
                  controller: num1
              ),
              SizedBox(height: 20,),
              TextField
                (keyboardType: TextInputType.number,
                controller: num2,
              ),
              SizedBox(height: 20,),
              IconButton(
                  onPressed: (){
                    setState((){
                      int result = int.parse(num1.text) + int.parse(num2.text);
                      resulttext = result.toString();
                    });
                  },
                  icon: Text('ADD')
              ),
              SizedBox(height: 20,),
              Text(resulttext),
            ],
          ),
        ),
      ),
    );
  }
}
