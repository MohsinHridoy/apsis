import 'package:flutter/material.dart';



class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  double num1 = 0;
  double num2 = 0;
  String operand = "";
  String result = "";

  void handleButtonPress(String buttonText) {
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
    } else if (buttonText == "C") {
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

  Widget buildButton(String buttonText) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          handleButtonPress(buttonText);
        },
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
            child: Text(
              input,
              style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
            child: Text(
              operand != "" ? '$num1 $operand $num2' : '',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
            child: Text(
              result,
              style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(
                children: [buildButton("7"), buildButton("8"), buildButton("9"), buildButton("/")],
              ),
              Row(
                children: [buildButton("4"), buildButton("5"), buildButton("6"), buildButton("x")],
              ),
              Row(
                children: [buildButton("1"), buildButton("2"), buildButton("3"), buildButton("-")],
              ),
              Row(
                children: [buildButton("C"), buildButton("0"), buildButton("="), buildButton("+")],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
