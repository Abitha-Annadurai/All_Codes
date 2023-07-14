import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({Key? key}) : super(key: key);

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  int tapCount = 1;
  bool isShow = true;
  bool isVisible = true;
  bool isView = true;
  bool isAppear = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Task 5'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(110),
          alignment: Alignment.centerRight,
          child: Column(
              children: [
                Row(
                  children: [
                    //AssetImage(assetName)
                    Container(
                      color: Colors.black,
                      width: 50,
                      height: 50,
                      child:Visibility(
                        maintainSize: true,
                        visible: !isShow,
                        maintainAnimation: true,
                        maintainState: true,
                        child: Image.asset('asset/img.png',
                          width: 100, height: 100,),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      color: Colors.black,
                      width: 50,
                      height: 50,
                      child:Visibility(
                        maintainSize: true,
                        visible: !isVisible,
                        maintainAnimation: true,
                        maintainState: true,
                        child: Image.asset('asset/img.png', width: 100, height: 100,),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                    children: [
                      Container(
                        color: Colors.black,
                        width: 50,
                        height: 50,
                        child:Visibility(
                          maintainSize: true,
                          visible: !isView,
                          maintainAnimation: true,
                          maintainState: true,
                          child: Image.asset('asset/img.png', width: 100, height: 100,),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        color: Colors.black,
                        width: 50,
                        height: 50,
                        child:Visibility(maintainSize: true,
                          visible: !isAppear,
                          maintainAnimation: true,
                          maintainState: true,
                          child: Image.asset('asset/img.png', width: 100, height: 100,),
                        ),
                      ),
                    ]
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
      ),
    );
  }
}
