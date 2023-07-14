import 'package:flutter/material.dart';
import 'package:gridviewclass/gps/track/userScreen.dart';

import 'mapScreen.dart';

class TrackUser extends StatefulWidget {
  const TrackUser({Key? key}) : super(key: key);

  @override
  State<TrackUser> createState() => _TrackUserState();
}

class _TrackUserState extends State<TrackUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Flutter Google Maps"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const mapScreen();
              }));
            }, child: const Text("Simple Map")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const userScreen();
              }));
            }, child: const Text("User current location")),

          ],
        ),
      ),
    );  }
}

