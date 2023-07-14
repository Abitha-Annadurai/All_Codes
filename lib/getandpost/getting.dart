import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';

class Detail {
  final int id;
  final String name;
  final String localized_name;
  final String primary_attr;
  final String attack_type;

  Detail({
    required this.id,
    required this.name,
    required this.localized_name,
    required this.primary_attr,
    required this.attack_type,
  });
}

class FetchData extends StatefulWidget {
  const FetchData({Key? key}) : super(key: key);

  @override
  State<FetchData> createState() => _FetchDataState();
}
class _FetchDataState extends State<FetchData> {
  Future<List<Detail>> fetch() async {
    final response = await http.get(Uri.parse('https://api.opendota.com/api/heroStats'));
    var responseData = json.decode(response.body);
    List<Detail> Details = [];
    for (var singleUser in responseData) {
      Detail detail = Detail(
        id: singleUser['id'],
        name: singleUser['name'],
        localized_name: singleUser['localized_name'],
        primary_attr: singleUser['primary_attr'],
        attack_type: singleUser['attack_type'],
      );
      Details.add(detail);
    }
    return Details;
  }

  @override
  void initState() {super.initState();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Method'),
    automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: FutureBuilder(future: fetch(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.data != null) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Column(
                      children: [
                        Row(
                          children: [
                            Text(snapshot.data[index].id.toString(), style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20),),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data[index].name),
                                Text(snapshot.data[index].localized_name),
                                Text(snapshot.data[index].primary_attr),
                                Text(snapshot.data[index].attack_type),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30,),
                      ]
                  );
                },
                );
              } else {
                return Container(child: Center(child: Text('Failed'),));
              }
            }
        ),
      ),
    );
  }
}
