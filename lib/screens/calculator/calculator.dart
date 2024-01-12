

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  double num1 = 0;
  double num2 = 0;
  String operand = "";
  String result = "";

  // void _buttonPressed(String buttonText) {
  //   if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/") {
  //     // Check if the last pressed button was an operator, if yes, update the operand
  //     if (["/", "x", "+", "-"].contains(input)) {
  //       input = input.substring(0, input.length - 1) + buttonText;
  //     } else {
  //       _processOperator(buttonText);
  //       input += buttonText; // Add the pressed operator to the input
  //     }
  //   } else if (buttonText == "=") {
  //     _calculateResult();
  //   } else if (buttonText == "AC") {
  //     _clear();
  //   } else {
  //     input += buttonText;
  //   }
  //
  //   setState(() {});
  // }

  void _buttonPressed(String buttonText) {
    if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/") {
      if (["/", "x", "+", "-"].contains(input)) {
        // Remove the last operator if there is one
        input = input.substring(0, input.length - 1);
      }
      _processOperator(buttonText);
      input += buttonText; // Add the pressed operator to the input
      print(input);

    } else if (buttonText == "=") {
      _calculateResult();
    } else if (buttonText == "AC") {
      _clear();
    } else {
      // Append the pressed button text to the input
      input += buttonText;
    }

    setState(() {});
  }






  void _processOperator(String newOperand) {
    if (num1 != 0) {
      num2 = double.tryParse(input) ?? 0; // Use tryParse to handle invalid doubles

      if (num2 == null) {
        result = "Error";
        _clear();
        return;
      }

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
            _clear();
            return;
          }
          break;
      }
      operand = newOperand;
    } else {
      num1 = double.tryParse(input) ?? 0;
      operand = newOperand;
    }
  }


  // void _calculateResult() {
  //   if (operand.isNotEmpty && input.isNotEmpty) {
  //     // Split the input into numbers and operators
  //     List<String> components = input.split(RegExp(r'[-+*/]'));
  //
  //     // Remove empty strings from the list
  //     components.removeWhere((element) => element.isEmpty);
  //
  //     // Perform calculations based on the components
  //     num1 = double.parse(components[0]);
  //     String currentOperand = "";
  //     for (int i = 1; i < components.length; i++) {
  //       String component = components[i];
  //
  //       if (RegExp(r'[-+*/]').hasMatch(component)) {
  //         // If the component is an operator
  //         currentOperand = component;
  //       } else {
  //         // If the component is a number
  //         num2 = double.parse(component);
  //
  //         switch (currentOperand) {
  //           case "+":
  //             num1 += num2;
  //             break;
  //           case "-":
  //             num1 -= num2;
  //             break;
  //           case "x":
  //             num1 *= num2;
  //             break;
  //           case "/":
  //             if (num2 != 0) {
  //               num1 /= num2;
  //             } else {
  //               result = "Error";
  //               _clear(); // Move _clear here to handle the error case
  //               return;
  //             }
  //             break;
  //           default:
  //           // If there is no current operand, update the num1
  //             num1 = num2;
  //         }
  //       }
  //     }
  //
  //     result = num1.toString();
  //   }
  // }


  void _calculateResult() {
    if (operand.isNotEmpty && input.isNotEmpty) {
      // Split the input into numbers and operators
      List<String> components = input.split(RegExp(r'[-+*/]'));

      // Remove empty strings from the list
      components.removeWhere((element) => element.isEmpty);

      // Initialize num1 with the first component
      num1 = double.tryParse(components[0]) ?? 0;

      // Initialize currentOperand to handle the first operator if present
      String currentOperand = "";

      for (int i = 1; i < components.length; i++) {
        String component = components[i];

        if (RegExp(r'[-+*/]').hasMatch(component)) {
          // If the component is an operator
          currentOperand = component;
        } else {
          // If the component is a number
          num2 = double.tryParse(component) ?? 0;

          switch (currentOperand) {
            case "+":
              num1 += num2;
              print(input);
              break;
            case "-":
              num1 -= num2;
              print(input);
              break;
            case "x":
              num1 *= num2;
              print(input);
              break;
            case "/":
              if (num2 != 0) {
                num1 /= num2;
              } else {
                result = "Error";
                _clear(); // Move _clear here to handle the error case
                return;
              }
              break;
            default:
            // If there is no current operand, do nothing and continue to the next iteration
              continue;
          }
        }
      }

      result = num1.toStringAsFixed(2); // Format the result to two decimal places
    }
  }



  void _clear() {
    num1 = 0; // Reset num1 to 0
    num2 = 0;
    operand = "";
    input = "";
    result = "";
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
                  _buildResultText(input, 29.51),
                  _buildResultText1(result, 39.51),
                  // _buildResultText(result, 39.51),
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
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    _buildRow(["AC", "( )", "%", "/"]),
                    _buildRow(["7", "8", "9", "x"]),
                    _buildRow(["4", "5", "6", "-"]),
                    _buildRow(["1", "2", "3", "+"]),
                    _buildRow(["+/-", "0", ".", "="]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildResultText(String text, double fontSize) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        input,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildResultText1(String text, double fontSize) {
    String formattedResult;
    try {
      double parsedResult = double.parse(text);
      if (parsedResult == parsedResult.round()) {
        formattedResult = parsedResult.round().toString();
      } else {
        formattedResult = parsedResult.toStringAsFixed(2);
      }
    } catch (e) {
      formattedResult = 'Error';
    }

    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        formattedResult,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }



  Widget _buildRow(List<String> buttons) {
    return Row(
      children: buttons
          .map((text) => containerBtn(
        text,
        _getButtonTextColor(text),
        _getButtonColor(text),
      ))
          .toList(),
    );
  }

  Color _getButtonTextColor(String text) {
    if (["=", "+", "-", "/"].contains(text)) {
      return Colors.black; // Set the text color for '=', '+', '-', '/'
    } else {
      return Colors.white; // Set the default text color for other buttons
    }
  }

  Color _getButtonColor(String text) {
    if (["=", "+", "-", "/"].contains(text)) {
      return Colors.green; // Set the color for '=', '+', '-', '/'
    } else {
      return Color(0xFF9B3030); // Set the default color for other buttons
    }
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
