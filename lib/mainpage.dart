import 'package:flutter/material.dart';
import 'package:gridviewclass/main.dart';
import 'package:gridviewclass/sqlite/crud/crudfun.dart';
import 'package:gridviewclass/sqlite/sqlitecode.dart';
import 'package:gridviewclass/tabbar/tabbar1.dart';
import 'package:gridviewclass/tabbar/tabbarr.dart';
import 'package:gridviewclass/youtube/youtubetask.dart';
import 'package:gridviewclass/zepto/Zepto.dart';

import 'appbar/appbarr.dart';
import 'appbar/backdropp.dart';
import 'bottomnavigation/botnav.dart';
import 'calculator.dart';
import 'getandpost/bottomsheettask.dart';
import 'getandpost/getting.dart';
import 'getandpost/posting.dart';
import 'gps/latlong.dart';
import 'gps/track/trackuser.dart';
import 'grid/gridbuild.dart';
import 'grid/gridcount.dart';
import 'grid/gridcustom.dart';
import 'grid/gridextent.dart';
import 'grid/gridtask.dart';
import 'grid/gridviewmain.dart';
import 'imagepick.dart';
import 'list/builder1.dart';
import 'list/builder2.dart';
import 'list/listviewmain.dart';
import 'list/task.dart';
import 'setstate/task1.dart';
import 'setstate/task2.dart';
import 'setstate/task3.dart';
import 'setstate/task4.dart';
import 'setstate/task5.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children:[
                SizedBox(height: 40,),
                ExpansionTile(
                  title: Text('AppBar'),
                  subtitle: Text('Output'),
                  leading: Icon(Icons.back_hand_rounded),
                  children: [
                    ListTile(
                        title: Text('AppBar'),
                        leading: Icon(Icons.flutter_dash_outlined),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AppBarr()));
                          // Navigator.of(context).pop();
                        }
                    ),
                    ListTile(
                        title: Text('BackDrop'),
                        leading: Icon(Icons.flutter_dash_outlined),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BackDropp()));
                        }
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text('ListView'),
                  subtitle: Text('Output'),
                  leading: Icon(Icons.list_alt_outlined),
                  children: [
                    ListTile(
                        title: Text('List View'),
                        leading: Icon(Icons.list_alt_outlined),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListviewMain()));
                        }
                    ),
                    ListTile(
                      title: Text('ListView.builder1'),
                      leading: Icon(Icons.list_alt_outlined),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Builder1()));
                      },
                    ),
                    ListTile(
                      title: Text('ListView.builder2'),
                      leading: Icon(Icons.list_alt_outlined),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Builder2()));
                      },
                    ),
                    ListTile(
                        title: Text('Task'),
                        leading: Icon(Icons.list_alt_outlined),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task()));
                        }
                    ),
                  ],
                ),
                ListTile(
                    title: Text('Youtube Home Page'),
                    leading: Icon(Icons.list_alt_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => YoutubeTask()));
                    }
                ),
                ListTile(
                    title: Text('Zepto Home Page'),
                    leading: Icon(Icons.list_alt_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Zepto()));
                    }
                ),
                ExpansionTile(
                  title: Text('SQLite'),
                  leading: Icon(Icons.data_object),
                  subtitle: Text('Output'),
                  children: [
                    ListTile(
                        title: Text('Crud Function'),
                        leading: Icon(Icons.data_object),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  CrudFun()));
                        }
                    ),
                    ListTile(
                        title: Text('Sqlite DB'),
                        leading: Icon(Icons.data_object),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SqliteCode()));
                        }
                    ),
                  ],
                ),
                ListTile(
                    title: Text('Image Picker'),
                    leading: Icon(Icons.image),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ImagePick()));
                    }
                ),
              ]
          ),
        ),
      ),
      endDrawer: Drawer(
        width: 240,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Abi A'),
                accountEmail: Text('abi@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('asset/insta25.jpg'),
                ),

                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/insta4.jpg'),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('SetState'),
                subtitle: Text('Output'),
                leading: Icon(Icons.palette_rounded),
                children: [
                  ListTile(
                    title: Text('Task 1'),
                    trailing: Icon(Icons.rounded_corner),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task1()));
                    },
                  ),
                  ListTile(
                      title: Text('Task 2'),
                      trailing: Icon(Icons.rounded_corner),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task2()));
                      }
                  ),
                  ListTile(
                      title: const Text('Task 3'),
                      trailing: Icon(Icons.rounded_corner),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task3()));
                      }
                  ),
                  ListTile(
                    title: Text('Task 4'),
                    trailing: Icon(Icons.rounded_corner),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task4()));
                    },
                  ),
                  ListTile(
                    title: Text('Task 5'),
                    trailing: Icon(Icons.rounded_corner),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task5()));
                    },
                  ),
                ],
              ),

              ExpansionTile(
                  title: Text('TabBar'),
              children: [
                ListTile(
                  title: Text('TabBar'),
                  subtitle: Text('Output'),
                  trailing: Icon(Icons.tab),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tabbarr()));
                  },
                ),
                ListTile(
                  title: Text('TabBar'),
                  subtitle: Text('Output'),
                  trailing: Icon(Icons.tab),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tabbar1()));
                  },
                ),
              ],
              ),
              ExpansionTile(
                title: Text('GridView'),
                subtitle: Text('Output'),
                leading: Icon(Icons.grid_4x4_outlined),
                children: [
                  ListTile(
                    title: Text('GridView'),
                    trailing: Icon(Icons.grid_4x4_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridviewMain()));
                    },
                  ),
                  ListTile(
                      title: Text('GridView.count'),
                      trailing: Icon(Icons.grid_4x4),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridCount()));
                      }
                  ),
                  ListTile(
                      title: const Text('GridView.builder'),
                      trailing: Icon(Icons.grid_4x4),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridBuild()));
                      }
                  ),
                  ListTile(
                    title: Text('GridView.extent'),
                    trailing: Icon(Icons.grid_4x4),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridExtent()));
                    },
                  ),
                  ListTile(
                    title: Text('GridView.custom'),
                    trailing: Icon(Icons.grid_4x4),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridCustom()));
                    },
                  ),
                  ListTile(
                    title: Text('Task'),
                    trailing: Icon(Icons.grid_4x4),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => GridTask()));
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text('Bottom NavigationBar'),
                trailing: Icon(Icons.pages),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BotNav()));
                },
              ),
              ExpansionTile(
                title: Text('Get and Post Method'),
                subtitle: Text('API'),
                leading: Icon(Icons.signpost_rounded),
                children: [
                  ListTile(
                    title: Text('Get Method'),
                    trailing: Icon(Icons.api),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FetchData()));
                    },
                  ),
                  ListTile(
                    title: Text('Post Method'),
                    trailing: Icon(Icons.api),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Posting()));
                    },
                  ),
                  ListTile(
                    title: Text('Show Bottom Sheet'),
                    trailing: Icon(Icons.vertical_align_bottom_sharp),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomSheet1()));
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('GPS'),
                subtitle: Text('Output'),
                leading: Icon(Icons.location_on),
                children: [
                  ListTile(
                    title: Text('Geocoding Geolocator'),
                    trailing: Icon(Icons.location_on_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LatLong()));
                    },
                  ),
                  ListTile(
                    title: Text('User Current Location'),
                    trailing: Icon(Icons.location_history_outlined),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrackUser()));
                    },
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      appBar:AppBar(
        title: Text('All Task Outputs'),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => new Calculator()));
          },
              icon: Icon(Icons.calculate_sharp)
          ),
          IconButton(onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
          },
              icon: Icon(Icons.logout)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.all(20),
                child: Text('Welcome To Great Kirikalan Flutter Show', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 33),),
              ),
              SizedBox(height: 30,),
              Image.asset("asset/ka.png",),
            ],
          ),
        ),
      ),
    );
  }
}
