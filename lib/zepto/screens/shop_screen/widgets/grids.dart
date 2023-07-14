import 'package:flutter/material.dart';

class Grids extends StatefulWidget {
  const Grids({Key? key}) : super(key: key);

  @override
  State<Grids> createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              //onTap: () {_showInfo(context);},
              child: Card(
                child: Container(
                    color: Colors.black12,
                    padding: EdgeInsets.all(19),
                    child: Column(
                        children: [
                          Text('Fruits & Vegetables', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Image.asset('assets/images/pepper.png'),
                        ]
                    )
                ),
              ),
            ),
            InkWell(
              //onTap: () {_showInfo(context);},
              child: Card(
                child: Container(
                    color: Colors.black12,
                    padding: EdgeInsets.all(18),
                    child: Column(
                        children: [
                          Text('Atta, Oil, Rice & Dals', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Image.asset('assets/images/oils.png'),
                        ]
                    )
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
