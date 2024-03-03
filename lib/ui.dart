import 'package:flutter/material.dart';
import 'button.dart';
import 'package:basic_calc/CalculatorLogic.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String text = '0';
  String history = '';
  CalculatorLogic calculatorLogic = CalculatorLogic();

  void updateText(String buttonText) {
    setState(() {
      calculatorLogic.calculation(buttonText);
      text = calculatorLogic.getText();
      history = calculatorLogic.getHistory();
    });
  }

  Color amber = Color(0xffd2691e);
  Color grey =  Color(0xff262626);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Calculator',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.black,
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            history,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              text,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    calcButton(btntxt: 'AC', btnclr: Colors.grey, txtclr: Colors.black, onPressed: updateText),
                    calcButton(btntxt: '+/-', btnclr: Colors.grey, txtclr: Colors.black, onPressed: updateText),
                    calcButton(btntxt: '%', btnclr: Colors.grey, txtclr: Colors.black, onPressed: updateText),
                    calcButton(btntxt: '/', btnclr: amber, txtclr: Colors.white, onPressed: updateText)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    calcButton(btntxt: '7', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '8', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '9', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: 'x', btnclr: amber, txtclr: Colors.white, onPressed: updateText)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    calcButton(btntxt: '4', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '5', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '6', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '-', btnclr: amber, txtclr: Colors.white, onPressed: updateText)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    calcButton(btntxt: '1', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '2', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '3', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '+', btnclr: amber, txtclr: Colors.white, onPressed: updateText)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          updateText('0');
                        },
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: grey,
                          minimumSize: Size(180,80),
                        ),
                      ),
                    ),
                    calcButton(btntxt: '.', btnclr: grey, txtclr: Colors.white, onPressed: updateText),
                    calcButton(btntxt: '=', btnclr: amber, txtclr: Colors.white, onPressed: updateText),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}



