import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('CALCULATOR'),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(text,
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ),
                Row(
                  children: [
                    customOutlinedButton('9'),
                    customOutlinedButton('8'),
                    customOutlinedButton('7'),
                    customOutlinedButton('+'),
                  ],
                ),
                Row(
                  children: [
                    customOutlinedButton('6'),
                    customOutlinedButton('5'),
                    customOutlinedButton('4'),
                    customOutlinedButton('-'),

                  ],
                ),
                Row(
                  children: [
                    customOutlinedButton('3'),
                    customOutlinedButton('2'),
                    customOutlinedButton('1'),
                    customOutlinedButton('x'),
                  ],
                ),
                Row(
                  children: [
                    customOutlinedButton('C'),
                    customOutlinedButton('0'),
                    customOutlinedButton('='),
                    customOutlinedButton('/'),
                  ],
                ),
              ]
          ),
        )
    );
  }

  Expanded customOutlinedButton(String val) {
    return  Expanded(
        child: OutlinedButton(
          onPressed: () => btnClicked(val),
          child: Text(val,
            style: TextStyle(
                fontSize: 60,
                color: Colors.black87),
          ),
        )
    );
  }

  late int first, second;
  late String res, text = '', opp;
  void btnClicked(String btnText) {
    if(btnText == 'C'){
      first = 0;
      second = 0;
      res='';
      text = '';
    } else if (btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '%' ){
      first = int.parse(text);
      opp =btnText;
      res = '';
    } else if (btnText == '='){
      second = int.parse(text);
      if(opp == '+'){
        res = (first + second).toString();
      }
      if(opp == '-'){
        res = (first - second).toString();
      }
      if(opp == 'x'){
        res = (first * second).toString();
      }
      if(opp == '/'){
        res= (first / second).toString();
      }
    } else {
      res = int.parse(text+btnText).toString();
    }
    setState((){
      text = res;
    });
  }
}
