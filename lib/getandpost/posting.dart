import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';

class Posting extends StatefulWidget {
  const Posting({Key? key}) : super(key: key);

  @override
  State<Posting> createState() => _PostingState();
}

class _PostingState extends State<Posting> {
  List? modelList;

  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future<String> fetch() async {
    final data = {'year': '2020', 'make': 'TATA'};
    var headers = {'Content-Type':'application/json',};
    final response = await http.post(Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvModels'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      modelList = responseData["modelList"];
      print("Data : "+modelList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Post Method'),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(onPressed: (){}, child: Text('Models of TATA', style: TextStyle(color: Colors.white),))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: FutureBuilder(
            future: fetch(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.data != null) {
                return ListView.builder(
                  itemCount:  modelList!.length,
                  itemBuilder: (BuildContext context, int i) {
                    return ListTile(
                      leading: Icon(Icons.car_repair),
                      title: Text(modelList![i].toString()),
                    );
                  },
                );
              } else {
                return Container(
                    child: Center(child: Text('Failed'),)
                );
              }
            }
        ),
      ),
    );
  }
}