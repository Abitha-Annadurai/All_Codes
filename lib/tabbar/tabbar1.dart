import 'package:flutter/material.dart';

class Tabbar1 extends StatefulWidget {
  const Tabbar1({Key? key}) : super(key: key);

  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {

  var firsttextfield = TextEditingController();
  var secondtextfield = TextEditingController();
  var text = "";
  var text1 = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              //  isScrollable: true,
              tabs: [Tab(icon: Icon(Icons.groups) ,),
                Tab(text: "Chat",),Tab(text: "Status",),Tab(text: "Calls",)],
            ),
            title: Text("WhatsApp"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Introducing Communities', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: firsttextfield,
                        ),
                        TextButton(onPressed: (){
                          setState(() {
                            text = firsttextfield.text;
                          });
                        }, child: Text("Tap Me")),
                        Text(text),
                        SizedBox(height: 20,),

                        TextField(
                          controller: secondtextfield,
                        ),
                        TextButton(onPressed: (){
                          setState(() {
                            text1 = secondtextfield.text;
                          });
                        }, child: Text("Tap Me")),
                        Text(text1),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Image from folder'),
                    SizedBox(height: 10,),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Image.asset('asset/insta25.jpg'),
                    ),
                    SizedBox(height: 10,),
                    TextButton(onPressed: (){}, child: Text('TapMe')),
                    SizedBox(height: 30,),

                    Text('Image from Network'),
                    SizedBox(height: 10,),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Image.network('https://cdn.pixabay.com/photo/2023/06/11/19/09/fruit-8056663_640.jpg'),
                    ),
                  ],
                )),
              Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.call),),)
            ],
          )
      ),
    );
  }
}
