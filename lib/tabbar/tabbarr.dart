import 'package:flutter/material.dart';

class Tabbarr extends StatefulWidget {
  const Tabbarr({Key? key}) : super(key: key);

  @override
  State<Tabbarr> createState() => _TabbarrState();
}

class _TabbarrState extends State<Tabbarr> {
  int tapCount = 1;
  bool isShow = true;
  bool isVisible = true;
  bool isView = true;
  bool isAppear = true;
  String _value = '';
  String _value1 = '';
  String _value2 = '';
  String resulttext1 = '';
  String resulttext2 = '';
  String resulttext3 = '';
  String resulttext4 = '';
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var nameController = TextEditingController();
  void _onChanged(String value){
    setState((){
      _value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Task'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.share)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.mail)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.star)
            )
          ],

          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Task 1'),
              Tab(text: 'Task 2'),
              Tab(text: 'Task 3'),
              Tab(text: 'Task 4'),
              Tab(text: 'Task 5'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    TextButton(
                        onPressed: (){
                          setState((){_value = 'Task 1 completed';});
                        },
                        child: Text('Click')
                    ),
                    Text(_value),
                  ],
                ),
              ),
            ),
            Center(
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
            Center(
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
            Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(onPressed: (){
                        setState(() {
                          num1.text = '';
                          num2.text = '';
                        });
                      }, child: Text('Clear')),
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
                              int result1 = int.parse(num1.text) + int.parse(num2.text);
                              resulttext1 = result1.toString();
                            });
                          },
                          icon: Text('ADD')
                      ),
                      Text(resulttext1),

                      IconButton(
                          onPressed: (){
                            setState((){
                              int result2 = int.parse(num1.text) - int.parse(num2.text);
                              resulttext2 = result2.toString();
                            });
                          },
                          icon: Text('SUB')
                      ),
                      Text(resulttext2),

                      IconButton(
                          onPressed: (){
                            setState((){
                              int result3 = int.parse(num1.text) * int.parse(num2.text);
                              resulttext3 = result3.toString();
                            });
                          },
                          icon: Text('MUL')
                      ),
                      Text(resulttext3),

                      IconButton(
                          onPressed: (){
                            setState((){
                              int result4 = int.parse(num1.text) * int.parse(num2.text);
                              resulttext4 = result4.toString();
                            });
                          },
                          icon: Text('DIV')
                      ),
                      Text(resulttext4),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.black,
                            width: 100,
                            height: 100,
                            child:Visibility(
                              maintainSize: true,
                              visible: !isShow,
                              maintainAnimation: true,
                              maintainState: true,
                              child: Image.asset('asset/insta25.jpg',
                                width: 100, height: 100,),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            color: Colors.black,
                            width: 100,
                            height: 100,
                            child:Visibility(
                              maintainSize: true,
                              visible: !isVisible,
                              maintainAnimation: true,
                              maintainState: true,
                              child: Image.asset('asset/insta25.jpg', width: 100, height: 100,),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Row(
                          children: [
                            Container(
                              color: Colors.black,
                              width: 100,
                              height: 100,
                              child:Visibility(
                                maintainSize: true,
                                visible: !isView,
                                maintainAnimation: true,
                                maintainState: true,
                                child: Image.asset('asset/insta25.jpg', width: 100, height: 100,),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              color: Colors.black,
                              width: 100,
                              height: 100,
                              child:Visibility(maintainSize: true,
                                visible: !isAppear,
                                maintainAnimation: true,
                                maintainState: true,
                                child: Image.asset('asset/insta25.jpg', width: 100, height: 100,),
                              ),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextButton(
                      onPressed: (){
                        setState((){
                          if(tapCount == 1) {
                            tapCount = 2;
                            isShow = !isShow;
                            isVisible = true;
                            isView = true;
                            isAppear = true;
                          }else if(tapCount == 2){
                            tapCount = 3;
                            isShow = true;
                            isVisible = !isVisible;
                            isView = true;
                            isAppear = true;
                          } else if (tapCount == 3){
                            tapCount = 4;
                            isShow = true;
                            isVisible = true;
                            isView = !isView;
                            isAppear = true;
                          } else {
                            tapCount = 1;
                            isShow = true;
                            isVisible = true;
                            isView = true;
                            isAppear = !isAppear;
                          }
                        });
                      },
                      child: Text('ClickMe'),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
