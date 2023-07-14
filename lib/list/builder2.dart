import 'package:flutter/material.dart';

class Builder2 extends StatefulWidget {
  const Builder2({Key? key}) : super(key: key);

  @override
  State<Builder2> createState() => _Builder2State();
}

class _Builder2State extends State<Builder2> {
  var name = ['acvbnm', 'bzxcvbn', 'csdfgh', 'dwerty', 'edfgh', 'fwertyu'];
  var number = ['123654789', '28746245', '3874698412', '484123684', '58748415', '684684184', '74541153684'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Given List'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (BuildContext, index) {
          return ListTile(
            title: Text(name[index]),
            subtitle: Text(number[index]),
          );
        },
          itemCount: name.length,
        ),),
    );
  }
}
