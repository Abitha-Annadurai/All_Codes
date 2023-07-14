import 'package:flutter/material.dart';
import 'contact.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  // List<User> users = [
  //   User(names: "Anu", numbers: "9876543231"),
  //   User(names: "Aravind", numbers: "6304578234"),
  //   User(names: "Bavi", numbers: "9023445788"),
  //   User(names: "Devi", numbers: "9134567935"),
  //   User(names: "Raghul", numbers: "9023445788"),
  //   User(names: 'Ranjani', numbers: "'8014578987'"),
  // ];
  var names = ['Anu', 'Aravind', 'Bavi', 'Devi', 'Raghul', 'Ranjani', 'Rajesh', 'Sanjeev', 'Sai', 'Siva'];
  var numbers = ['9876543231', '6304578234', '9023445788', '9134567935', '9023445788', '8014578987', '9895678654',
    '9876543231', '6304578234', '9023445788'];


  var nameController = TextEditingController();
  var numberController = TextEditingController();


  void AddList(String, int){
    setState((){
      names.insert(0, nameController.text);
      numbers.insert(0, numberController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Contacts'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
                child: Column(
                    children: [
                      TextField(
                        controller: nameController,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: numberController,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (){
                            setState(() {
                              AddList(String, int);
                            });
                          },
                              child: Text('Add')),
                          TextButton(onPressed: (){
                            setState(() {
                              nameController.text = '';
                              numberController.text = '';
                            });
                          },
                              child: Text('Clear')),
                        ],
                      )
                    ]
                )
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (BuildContext, index) {
                return ListTile(
                  title: Text(names[index]),
                  subtitle: Text(numbers[index]),
                  leading: CircleAvatar(),
                  trailing: Icon(Icons.call),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Contact(contactname: names[index],
                                contactnumber: numbers[index])));
                  },
                );
              },
                itemCount: names.length,
              ),
            ),
          ]
      ),
    );
  }
}
/*class User {
  final String names;
  final String numbers;

  const User ({
    required this.names,
    required this.numbers,
});
}

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  /*List<User> users = [
    User(names: "Anu", numbers: "9876543231"),
    User(names: "Aravind", numbers: "6304578234"),
    User(names: "Bavi", numbers: "9023445788"),
    User(names: "Devi", numbers: "9134567935"),
    User(names: "Raghul", numbers: "9023445788"),
    User(names: 'Ranjani', numbers: '8014578987'),
  ];*/

  List names = ['Anu', 'Aravind', 'Bavi', 'Devi', 'Raghul', 'Ranjani'];
  List numbers = ['9876543231', '6304578234', '9023445788', '9134567935', '9023445788', '8014578987'];

  var nameController = TextEditingController();
  var numberController = TextEditingController();

  void AddList(){
    setState((){
     //users = User(names: nameController.text, numbers: numberController.text) as List<User>;
     // users.insert(0, nameController.text as User);
      names.insert(0, numberController.text);
      numbers.insert(0, numberController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: (){
              //  AddList();
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search_sharp))
        ],
      ),
      body: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
                child: Column(
                    children: [
                      TextField(
                        controller: nameController,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: numberController,
                      ),
                    ]
                )
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (BuildContext, index) {
                //final user = users[index];
                return ListTile(
                  title: Text(names[index]),
                  subtitle: Text(numbers[index]),
                  leading: Icon(Icons.contact_page_outlined),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contact(name: names[index],
                        number: numbers[index])));
                  },
                );
              },
                itemCount: names.length,
              ),
            ),
          ]
      ),
    );
  }
}*/
