import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  State<BottomSheet1> createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  static List<String> year = ['2016', '2017', '2018', '2020', '2021', '2022'];
  List? makeList;
  List? modelList;
  List? variantList;
  List? locationList;

  var yearController = TextEditingController();
  var makeController = TextEditingController();
  var modelController = TextEditingController();
  var variantController = TextEditingController();
  var locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetch2();
    fetch3();
    fetch4();
  }

  Future<String> fetch2() async {
    final data = {'year': '2020'};
    var headers = {'Content-Type':'application/json',};
    final response = await http.post(Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvMakes'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      makeList = responseData["makeList"];
      print("Data : "+makeList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  Future<String> fetch3() async {
    final data = {'year': '2020', 'make': makeController.text};
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

  Future<String> fetch4() async {
    final data = {'year': '2020', 'make': makeController.text, "model": modelController.text};
    var headers = {'Content-Type':'application/json',};
    final response = await http.post(Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvVariants'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      variantList = responseData["variantList"];
      print("Data : "+variantList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  Future<String> fetch5() async {
    final data = {'year': '2020','make': makeController.text, "model": modelController.text, "variant": variantController.text};
    var headers = {'Content-Type':'application/json',};
    final response = await http.post(Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvLoc'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      locationList = responseData["locationList"];
      print("Data : "+locationList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),
      backgroundColor: Colors.blueAccent,
      automaticallyImplyLeading: false,),
      body: Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: yearController,
                      onChanged: (text){},
                      decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_month_outlined,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        showModalBottomSheet(context: context, builder: (BuildContext context){
                          return ListView.builder(
                            itemCount: year.length,
                            itemBuilder: (BuildContext context, int i) {
                              return GestureDetector(
                                child: Card(
                                  child: ListTile(
                                    onTap: (){
                                      print(year[i]);
                                      setState(() {
                                        yearController.text = year[i].toString();
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    title: Text(year[i].toString()),
                                  ),)
                                ,);
                            },
                          );
                        });
                      },
                      icon: Icon(Icons.keyboard_arrow_down_outlined)
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: makeController,
                      onChanged: (text){},
                      decoration: const InputDecoration(
                        icon: Icon(
                            Icons.directions_car_outlined,
                            color: Colors.black87),
                      ),
                    ),
                  ), IconButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return FutureBuilder(
                          future: fetch2(),
                          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                            if (snapshot.data != null) {
                              return GestureDetector(
                                child: ListView.builder(
                                  itemCount:  makeList!.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return Card(
                                      child: ListTile(
                                        onTap: (){setState(() {
                                          makeController.text = makeList![i].toString();
                                        });
                                        print(makeList![i]);
                                        Navigator.of(context).pop();},
                                        title: Text(makeList![i].toString()),
                                      ),
                                    );
                                  },
                                ),
                              );
                            } else {
                              return Container(
                                  child: Center(
                                    child: Text('Failed'),)
                              );
                            }}
                      );
                    }
                    );
                  }, icon: Icon(Icons.keyboard_arrow_down_outlined)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: modelController,
                      onChanged: (text){
                        //makeController.text = getValue;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.directions_car_outlined,  color: Colors.black87),
                      ),
                    ),
                  ), IconButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return FutureBuilder(
                          future: fetch3(),
                          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                            if (snapshot.data != null) {
                              return GestureDetector(
                                child: ListView.builder(
                                  itemCount:  modelList!.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return Card(
                                      child: ListTile(
                                        onTap: (){
                                          setState(() {
                                            modelController.text = modelList![i].toString();
                                          });
                                          print(modelList![i]);
                                          Navigator.of(context).pop();
                                        },
                                        title: Text(modelList![i].toString()),
                                      ),
                                    );
                                  },),
                              );
                            } else {
                              return Container(child: Center(child: Text('Failed'),));
                            }
                          }
                      );
                    });
                  }, icon: Icon(Icons.keyboard_arrow_down_outlined)
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: variantController,
                      onChanged: (text){
                        // makeController.text = getValue;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.directions_car_outlined,  color: Colors.black87),
                      ),
                    ),
                  ), IconButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return FutureBuilder(
                          future: fetch4(),
                          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                            if (snapshot.data != null) {
                              return GestureDetector(
                                child: ListView.builder(
                                  itemCount:  variantList!.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return Card(
                                      child: ListTile(
                                        onTap: (){
                                          setState(() {
                                            variantController.text = variantList![i].toString();
                                          });
                                          print(variantList![i]);
                                          Navigator.of(context).pop();

                                        },
                                        title: Text(variantList![i].toString()),
                                      ),
                                    );
                                  },),
                              );
                            } else {
                              return Container(child: Center(child: Text('Failed'),));
                            }
                          }
                      );
                    });
                  }, icon: Icon(Icons.keyboard_arrow_down_outlined)
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: locationController,
                      onChanged: (text){
                        // makeController.text = getValue;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.location_on_outlined,  color: Colors.black87),
                      ),
                    ),
                  ), IconButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return FutureBuilder(
                          future: fetch5(),
                          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                            if (snapshot.data != null) {
                              return GestureDetector(
                                child: ListView.builder(
                                  itemCount:  locationList!.length,
                                  itemBuilder: (BuildContext context, int i) {
                                    return Card(
                                      child: ListTile(
                                        onTap: (){
                                          setState(() {
                                            locationController.text = locationList![i].toString();
                                          });
                                          print(locationList![i]);
                                          Navigator.of(context).pop();
                                        },
                                        title: Text(locationList![i].toString()),
                                      ),
                                    );
                                  },),
                              );
                            } else {
                              return Container(child: Center(child: Text('Failed'),));
                            }
                          }
                      );
                    });
                  }, icon: Icon(Icons.keyboard_arrow_down_outlined)
                  ),
                ]
            ),
            Center(child: TextButton(
              onPressed: (){
                setState(() {
                  yearController.text = '';
                  makeController.text = '';
                  modelController.text = '';
                  variantController.text = '';
                  locationController.text = '';
                });
              },
              child: Text('CLEAR', style: TextStyle(color: Colors.blueAccent),),
            ),)
          ],
        ),
      ),
    );
  }
}
