import 'package:flutter/material.dart';
import 'contact.dart';

class CrudFun extends StatefulWidget {
  const CrudFun({Key? key}) : super(key: key);

  @override
  State<CrudFun> createState() => _CrudFunState();
}

class _CrudFunState extends State<CrudFun> {

  var nameController = TextEditingController();
  var numberController = TextEditingController();
  List<Contact> contacts = List.empty(growable: true);
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Crud Function with Contact List'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.name,
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Contact Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      )
                  )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              controller: numberController,
              decoration: InputDecoration(
                  hintText: 'Contact Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      )
                  )
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  String name = nameController.text.trim();
                  String contact = numberController.text.trim();
                  if(name.isNotEmpty && contact.isNotEmpty){
                    setState(() {
                      nameController.text = '';
                      numberController.text = '';
                      contacts.add(Contact(name: name, contact: contact));
                    });
                  }
                },
                    child: Text('Save')),
                SizedBox(width: 10,),
                ElevatedButton(
                    onPressed: (){
                      String name = nameController.text.trim();
                      String contact = numberController.text.trim();
                      if(name.isNotEmpty && contact.isNotEmpty){
                        setState(() {
                          nameController.text = '';
                          numberController.text = '';
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = contact;
                          selectedIndex = -1;
                        });
                      }
                    },
                    child: Text('Update')),


              ],
            ),

            SizedBox(height: 20,),
            contacts.isEmpty ? Text('No Contact') :
            Expanded(
                child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext, index) {
                      return Card(
                        child: ListTile(
                          title: Column(
                            children: [
                              Text(contacts[index].name),
                              Text(contacts[index].contact)
                            ],
                          ),
                          trailing: SizedBox(
                            width: 80,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    nameController.text = contacts[index].name;
                                    numberController.text = contacts[index].contact;
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Icon(Icons.edit),
                                ),

                                SizedBox(width: 20,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      contacts.removeAt(index);
                                    });
                                  },
                                  child: Icon(Icons.delete),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                )
            )

          ],
        ),
      ),
    );
  }
}
