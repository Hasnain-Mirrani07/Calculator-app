import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Components/customButton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var input = '';
  var answer = '';

  void equalPress() {
    String finalinput = input.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Text(
                              input.toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ]),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    answer.toString(),
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomButton(
                            name: 'AC',
                            onPress: () {
                              input = '';
                              answer = '';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '+/-',
                            onPress: () {
                              input += '=/-';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '%',
                            onPress: () {
                              input += '%';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '/',
                            color: Color(0xffffa00a),
                            onPress: () {
                              input += '/';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            name: '7',
                            onPress: () {
                              input += '7';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '8',
                            onPress: () {
                              input += '8';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '9',
                            onPress: () {
                              input += '9';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '-',
                            color: Color(0xffffa00a),
                            onPress: () {
                              input += '-';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            name: '4',
                            onPress: () {
                              input += '4';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '5',
                            onPress: () {
                              input += '5';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '6',
                            onPress: () {
                              input += '6';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '+',
                            color: Color(0xffffa00a),
                            onPress: () {
                              input += '+';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            name: '1',
                            onPress: () {
                              input += '1';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '2',
                            onPress: () {
                              input += '2';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '3',
                            onPress: () {
                              input += '3';
                              setState(() {});
                            }),
                        CustomButton(
                            name: 'x',
                            color: Color(0xffffa00a),
                            onPress: () {
                              input += 'x';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            name: '0',
                            onPress: () {
                              input += '0';
                              setState(() {});
                            }),
                        CustomButton(
                            name: '.',
                            onPress: () {
                              input += '.';
                              setState(() {});
                            }),
                        CustomButton(
                            name: 'DEL',
                            onPress: () {
                              input = input.substring(0, input.length - 1);
                              setState(() {});
                            }),
                        CustomButton(
                            name: '=',
                            color: Color(0xffffa00a),
                            onPress: () {
                              equalPress();
                              setState(() {});
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
