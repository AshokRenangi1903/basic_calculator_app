import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator_app/button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = "";
  var answer = '0';
  Color primary = Colors.orange;
  Color secondary = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculator"),
        backgroundColor: primary,
        foregroundColor: secondary,
      ),
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            // Text Area
            Expanded(
                child: Container(
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // user Input
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      userInput,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.grey, fontSize: 28),
                    ),
                  ),

                  // Answer
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      answer,
                      textAlign: TextAlign.right,
                      style: TextStyle(color: primary, fontSize: 64),
                    ),
                  ),
                ],
              ),
            )),

            // Buttons Area
            Container(
              // color: Colors.red,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Column(
                children: [
                  // row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: '1',
                        bgColor: Colors.grey,
                        textColor: secondary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '1';
                          });
                          print(1);
                        },
                      ),
                      EachButton(
                        text: '2',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '2';
                          });
                          print(2);
                        },
                      ),
                      EachButton(
                        text: '3',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '3';
                          });
                          print(3);
                        },
                      ),
                      EachButton(
                        text: '/',
                        bgColor: secondary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '/';
                          });
                          print("/");
                        },
                      ),
                    ],
                  ),

                  // Row 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: '4',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '4';
                          });
                          print(4);
                        },
                      ),
                      EachButton(
                        text: '5',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '5';
                          });
                          print(5);
                        },
                      ),
                      EachButton(
                        text: '6',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '6';
                          });
                          print(6);
                        },
                      ),
                      EachButton(
                        text: '+',
                        bgColor: secondary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '+';
                          });
                          print('+');
                        },
                      ),
                    ],
                  ),

                  // Row 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: '7',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '7';
                          });
                          print(7);
                        },
                      ),
                      EachButton(
                        text: '8',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '8';
                          });
                          print(8);
                        },
                      ),
                      EachButton(
                        text: '9',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '9';
                          });
                          print(9);
                        },
                      ),
                      EachButton(
                        text: '-',
                        bgColor: secondary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '-';
                          });
                          print('-');
                        },
                      ),
                    ],
                  ),

                  // Row 4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: 'C',
                        bgColor: Colors.transparent,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                          print('C');
                        },
                      ),
                      EachButton(
                        text: '0',
                        bgColor: Colors.grey,
                        textColor: Colors.white,
                        buttonTapped: () {
                          setState(() {
                            userInput += '0';
                          });
                          print(0);
                        },
                      ),
                      EachButton(
                        text: '*',
                        bgColor: secondary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '*';
                          });
                          print('*');
                        },
                      ),
                      EachButton(
                        text: '=',
                        bgColor: primary,
                        textColor: secondary,
                        buttonTapped: () {
                          setState(() {
                            equalPressed();
                          });
                          print('=');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void equalPressed() {
    String finaluserinput = userInput;
    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
