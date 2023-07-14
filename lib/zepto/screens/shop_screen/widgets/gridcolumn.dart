import 'package:flutter/material.dart';

class GridColumn extends StatefulWidget {
  const GridColumn({Key? key}) : super(key: key);

  @override
  State<GridColumn> createState() => _GridColumnState();
}

class _GridColumnState extends State<GridColumn> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                    height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Masala & Dry Fruits', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/peesi.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Sweet Cravings', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/diary.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Frozen Food', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/juice_apple.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Packaged Food', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/bakery.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Diary Breas Eggs', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/diary.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Cold Drinks', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/coca_cola.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Munchies', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/ginger.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Meat, Fish, Egg', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/bakery.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Breakfast, Sauces', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/pasta.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Juices', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/juice_orange.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Biscuits', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/pulses.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Gourmet Selection', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/bakery.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Noodles', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/noodles1.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Rice', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/rice.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Eggs', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/egg_red.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
              InkWell(
                //onTap: () {_showInfo(context);},
                child: Card(
                  child: Container(
                      height: 100,
                      width: 70,
                      color: Colors.black12,
                      child: Column(
                          children: [
                            Text('Mayonnais', textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Image.asset('assets/images/mayonnais.png', height: 50, width: 50,),
                          ]
                      )
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
