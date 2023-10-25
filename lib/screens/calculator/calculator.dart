import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // String _output = '';
  // String _currentNumber = '';
  // String _operator = '';
  // double? _num1, _num2;
  //
  // void _buttonPressed(String buttonText) {
  //   if (buttonText == 'AC') {
  //     _clear();
  //   } else if (buttonText == '+' || buttonText == '-' || buttonText == 'x' || buttonText == '/') {
  //     _num1 = double.parse(_currentNumber);
  //     _operator = buttonText;
  //     _clear();
  //   } else if (buttonText == '=') {
  //     _num2 = double.parse(_currentNumber);
  //     _calculate();
  //   } else {
  //     _currentNumber += buttonText;
  //   }
  //
  //   setState(() {
  //     _output = _currentNumber;
  //   });
  // }
  //
  // void _clear() {
  //   _currentNumber = '';
  //   _operator = '';
  //   _output = '0';
  // }
  //
  // void _calculate() {
  //   double? result;
  //   if (_operator == '+') {
  //     result = _num1! + _num2!;
  //   } else if (_operator == '-') {
  //     result = _num1! - _num2!;
  //   } else if (_operator == 'x') {
  //     result = _num1! * _num2!;
  //   } else if (_operator == '/') {
  //     if (_num2 != 0) {
  //       result = _num1! / _num2!;
  //     } else {
  //       result = 0; // Handle division by zero
  //     }
  //   }
  //   _currentNumber = result.toString();
  //   _operator = '';
  // }

  String input = "";
  double num1 = 0;
  double num2 = 0;
  String operand = "";
  String result = "";

  void _buttonPressed(String buttonText) {
    if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/") {
      if (num1 != 0) {
        num2 = double.parse(input);
        switch (operand) {
          case "+":
            num1 += num2;
            break;
          case "-":
            num1 -= num2;
            break;
          case "x":
            num1 *= num2;
            break;
          case "/":
            if (num2 != 0) {
              num1 /= num2;
            } else {
              result = "Error";
            }
            break;
        }
        operand = buttonText;
        input = "";
      } else {
        num1 = double.parse(input);
        operand = buttonText;
        input = "";
      }
    } else if (buttonText == "=") {
      if (operand != "" && input != "") {
        num2 = double.parse(input);
        switch (operand) {
          case "+":
            result = (num1 + num2).toString();
            break;
          case "-":
            result = (num1 - num2).toString();
            break;
          case "x":
            result = (num1 * num2).toString();
            break;
          case "/":
            if (num2 != 0) {
              result = (num1 / num2).toString();
            } else {
              result = "Error";
            }
            break;
        }
        num1 = 0;
        num2 = 0;
        operand = "";
        input = "";
      }
    } else if (buttonText == "AC") {
      num1 = 0;
      num2 = 0;
      operand = "";
      input = "";
      result = "";
    } else {
      input += buttonText;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 200,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      input,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 29.51,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "$result",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 39.51,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 310,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.refresh),
                  Icon(Icons.backspace),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                color: Color(0xFFF0EFEF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.46),
                  topRight: Radius.circular(16.46),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 356.67,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(height: 15,),

                      Row(
                        children: [
                          containerBtn('AC', Color(0xFFFAFAFA), Color(0xFF282828)),
                          containerBtn('( )', Color(0xFFFAFAFA), Color(0xFF282828)),
                          containerBtn('%', Color(0xFFFAFAFA), Color(0xFF282828)),
                          containerBtn('/', Color(0xFFFAFAFA), Color(0xFF3868CE)),
                        ],
                      ),

                      Row(
                        children: [
                          containerBtn('7', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('8', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('9', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('x', Color(0xFF282828), Color(0xFF3868CE)),
                        ],
                      ),

                      Row(
                        children: [
                          containerBtn('4', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('5', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('6', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('-', Color(0xFF282828), Color(0xFF3868CE)),
                        ],
                      ),

                      Row(
                        children: [
                          containerBtn('1', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('2', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('3', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('+', Color(0xFF282828), Color(0xFF3868CE)),
                        ],
                      ),

                      Row(
                        children: [
                          containerBtn('+/-', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('0', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('.', Color(0xFF282828), Color(0xFFFAFAFA)),
                          containerBtn('=', Color(0xFF282828), Color(0xFF3868CE)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Other widgets on top of the positioned container if needed.
        ],
      ),
    );
  }

  Widget containerBtn(String text, Color txtColor, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
      child: GestureDetector(
        onTap: () {
          _buttonPressed(text);
        },
        child: Container(
          width: 76.82,
          height: 76.82,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.97),
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4.39,
                offset: Offset(3.29, 3.29),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: txtColor,
                fontSize: 32.92,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
