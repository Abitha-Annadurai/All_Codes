import 'package:flutter/material.dart';
import 'package:gridviewclass/grid/gridtask.dart';

class Details extends StatelessWidget {
  final User user;

  const Details({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.names),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 400,
                child: Image.asset(user.images),
              ),
              SizedBox(height: 20,),
              Container(
                child: Center(
                  child: Text(user.names,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
