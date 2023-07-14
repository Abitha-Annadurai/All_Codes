import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key, required this.contactname,required this.contactnumber}) : super(key: key);
  final String contactname;
  final String contactnumber;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        title: Text(widget.contactname),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.star_border_purple500_outlined)),
          IconButton(onPressed: () {},
              icon: Icon(Icons.edit))],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.indigo,
                ),SizedBox(height: 20,),

                Text(widget.contactname,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,),
                SizedBox(height: 10),
                Text(widget.contactnumber, textAlign: TextAlign.center,),
                const Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.call),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.chat),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.video_call),),
                  ],
                ),
                Divider(thickness: 2,),
                Row(
                    children: [
                      Text('Contact Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300) ),
                    ]
                ),SizedBox(height: 20,),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Text("WhatsApp : +91"+ widget.contactnumber),SizedBox(height: 20,),
                        Text('Telegram : +91'+ widget.contactnumber),SizedBox(height: 20,),
                        Text('Twitter  : +91'+ widget.contactnumber),]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class Contact extends StatelessWidget {
  //final User user;
  final name;
  final number;
  const Contact({Key? key,required this.name,required this.number, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Widget.name),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.star_border_purple500_outlined)),
          IconButton(onPressed: () {},
              icon: Icon(Icons.edit))],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.indigo,
              ), SizedBox(height: 20,),
              Container(
                child: Center(
                  child: Text(user.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,),
                ),
              ),SizedBox(height: 10),
              Container(
                child: Center(
                  child: Text(user.numbers,
                    textAlign: TextAlign.center,),
                ),
              ), SizedBox(height: 15,),
              Divider(thickness: 2,),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.call),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.chat),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.video_call),),
                ],
              ),  SizedBox(height: 5,),
              Divider(thickness: 2,), SizedBox(height: 15,),
              Row(
                  children: [
                    Text('Contact Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300) ),
                  ]
              ),SizedBox(height: 20,),
              Container(
                alignment: Alignment.bottomLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      Text("WhatsApp: +91" + user.numbers),SizedBox(height: 20,),
                      Text('Telegram : +91'+ user.numbers),SizedBox(height: 20,),
                      Text('Twitter  : +91'+ user.numbers),]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
