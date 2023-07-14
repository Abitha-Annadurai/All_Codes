import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'mainpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool checkLogin = pref.getBool('isLoggedIn') ?? false;
  runApp(MyApp(checkLogin));
}

class MyApp extends StatelessWidget {
  bool checkLogin;
  MyApp(this.checkLogin);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown,),
        debugShowCheckedModeBanner: false,
        home: checkLogin ? MainPage() : LoginPage(),
      ),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  Future<SharedPreferences> pref = SharedPreferences.getInstance();
  final _formKey = GlobalKey<FormState>();

  setLoginStatus() async {
    final SharedPreferences prefs = await pref;
    prefs.setBool("isLoggedIn", true);
    showSimpleNotification(Text('You are logged in'), background: Colors.green);
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    SizedBox(height: 20,);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Record"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10,),
                  Text("Login Form",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Name',
                      ),
                      validator: (value){
                        if(value!.isEmpty || value == null){
                          return "Enter Name";
                        }else{}},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Password',
                      ),
                      validator: (value){
                        if(value!.isEmpty || value == null){
                          return "Enter Password";
                        }else{}},
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        setLoginStatus();
                      }
                    },
                    child: Text("LOGIN"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}