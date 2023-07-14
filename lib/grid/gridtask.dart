import 'package:flutter/material.dart';
import 'details.dart';

class GridTask extends StatefulWidget {
  const GridTask({Key? key}) : super(key: key);

  @override
  State<GridTask> createState() => _GridTaskState();
}

class User {
  final String names;
  final String images;

  const User ({
    required this.names,
    required this.images,
  });
}


class _GridTaskState extends State<GridTask> {
  //var names = ['Onion', 'Pumkin', 'Cumcumber', 'Tomato', 'Carrot', 'Potato', 'Drumstick'];
  //var images = ['asset/1.jpg','asset/2.jpg','asset/3.JPG','asset/4.JPG','asset/5.jpg','asset/1.jpg','asset/2.jpg'];

  List<User> users = [
    User(names: "Onion", images: 'asset/1.jpg'),
    User(names: "Pumkin", images: 'asset/2.jpg'),
    User(names: "Cumcumber", images: 'asset/3.JPG'),
    User(names: "Carrot", images: 'asset/4.JPG'),
    User(names: "Tomato", images: 'asset/5.jpg'),
    User(names: 'Potato', images: 'asset/1.jpg'),
    User(names: "Pumkin", images: 'asset/2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black45,
            automaticallyImplyLeading: false,
            title: Center(
              child: Text('ListView+GridView Task'),
            ),
          ),

          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [

                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'List'),
                      Tab(text: 'Grid',)
                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Expanded(
                    child: TabBarView(
                      children: [
                        Center(
                          child: ListView.builder(
                            itemBuilder: (BuildContext, index) {
                            final user = users[index];// key: value
                            return Column(
                              children: [
                                ListTile(
                                  title: Text(user.names),
                                  leading: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(user.images,),
                                  ),
                                    onTap: (){
                                      _showInfo(context, user: user);
                                    }
                                ),
                                Divider(thickness: 2,)
                              ],
                            );
                          },
                            itemCount: users.length,
                          ),
                        ),

                        Center(
                          child: GridView.builder(
                            itemCount: users.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              final user = users[index];
                              return InkWell(
                                onTap: (){
                                  _showInfo(context, user: user);
                                },
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: AssetImage(user.images,),
                                    ), SizedBox(height: 10,),
                                    Text(user.names),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        )
    );
  }


  _showInfo(BuildContext context, {required User user}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center( child: Text('Info'),),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(user: user,)));
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Details(user: user,)));
                }, child: Text('Open Info'),
              ),),
          ],
        );
      },
    );
  }

}
