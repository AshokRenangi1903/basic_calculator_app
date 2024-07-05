import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator_app/button.dart';
import 'package:simple_calculator_app/constants/colors.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = "";
  var answer = '0';
  Color primary = MyColors.green;
  Color secondary = MyColors.black;
  Color teritay = MyColors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Calculator"),
        backgroundColor: MyColors.green,
        foregroundColor: MyColors.black,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        color: secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Text Area
            Container(
              // color: Colors.red,
              height: MediaQuery.sizeOf(context).height * 0.28,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // user Input
                    Container(
                      // color: Colors.amber,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        userInput,
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                    ),

                    // Answer
                    Container(
                      // color: Colors.amber,
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        answer,
                        textAlign: TextAlign.right,
                        style: TextStyle(color: primary, fontSize: 42),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Buttons Area
            Container(
              // color: Colors.blue,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Column(
                children: [
                  // row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: '1',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '1';
                          });
                        },
                      ),
                      EachButton(
                        text: '2',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '2';
                          });
                        },
                      ),
                      EachButton(
                        text: '3',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '3';
                          });
                        },
                      ),
                      EachButton(
                        text: '/',
                        // bgColor: primary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '/';
                          });
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
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '4';
                          });
                        },
                      ),
                      EachButton(
                        text: '5',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '5';
                          });
                        },
                      ),
                      EachButton(
                        text: '6',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '6';
                          });
                        },
                      ),
                      EachButton(
                        text: '+',
                        // bgColor: primary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '+';
                          });
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
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '7';
                          });
                        },
                      ),
                      EachButton(
                        text: '8',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '8';
                          });
                        },
                      ),
                      EachButton(
                        text: '9',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '9';
                          });
                        },
                      ),
                      EachButton(
                        text: '-',
                        // bgColor: primary,
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '-';
                          });
                        },
                      ),
                    ],
                  ),

                  // Row 4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: '.',
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '.';
                          });
                        },
                      ),
                      EachButton(
                        text: '0',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '0';
                          });
                        },
                      ),
                      EachButton(
                        text: '00',
                        textColor: teritay,
                        buttonTapped: () {
                          setState(() {
                            userInput += '00';
                          });
                        },
                      ),
                      EachButton(
                        text: '*',
                        textColor: primary,
                        // bgColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '*';
                          });
                        },
                      ),
                    ],
                  ),

                  // Row 5
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      EachButton(
                        text: 'C',
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                      ),
                      EachButton(
                        text: '^',
                        textColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '^';
                          });
                        },
                      ),
                      EachButton(
                        text: '%',
                        textColor: primary,
                        // bgColor: primary,
                        buttonTapped: () {
                          setState(() {
                            userInput += '%';
                          });
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
