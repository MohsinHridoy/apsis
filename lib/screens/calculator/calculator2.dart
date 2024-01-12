import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController expressionController = TextEditingController();
  String result = '';
  Color plusMinusColor = Colors.red; // Color for '+' and '-' symbols
  bool isResult = false;

  @override
  Widget build(BuildContext context) {
    if (result.isNotEmpty) {
      isResult = true;
    } else {
      isResult = false;
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Simple Calculator'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                reverse: true, // Scroll to the bottom initially
                children: [
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        controller: expressionController,
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.right,
                        readOnly: true,
                        maxLines: null,

                        decoration: InputDecoration(
                          // labelText: 'Enter Expression',
                          border: InputBorder.none, // Remove underline

                        ),
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          setState(
                              () {}); // Trigger a rebuild when the text changes
                        },
                      ),
                      Positioned(
                        right: 10.0,
                        child: buildTextWithStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Visibility(
                visible: isResult,
                child: Align(alignment:Alignment.centerRight,child: Container(height: 40, child: Text(result,style: TextStyle(fontSize: 22),)))),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:24,
                      width:24,
                      child: Image.asset("assets/icons/history_icon.png"),

                    ),
                    GestureDetector (
                      onTap:(){
                        setState(() {
                          clearLast();

                        });
                      },
                      child: Container(
                        height:24,
                        width:24,
                        child: Image.asset("assets/icons/delete_icon.png"),

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 450.11,
                decoration: ShapeDecoration(
                  color: Color(0xFFF0EFEF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.46),
                      topRight: Radius.circular(16.46),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // buildButton('C', clearLast),
                          buildButton('AC', Color(0xFF282828),
                              Color(0xFFFAFAFA), clearAll),
                          buildButton('( )', Color(0xFF282828),
                              Color(0xFFFAFAFA), () => appendDigit('8')),
                          buildButton('%', Color(0xFF282828), Color(0xFFFAFAFA),
                              () => appendDigit('%')),
                          buildOperatorButton('/'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // buildButton('C', clearLast),
                          buildButton('7', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('7')),
                          buildButton('8', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('8')),
                          buildButton('9', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('9')),
                          buildOperatorButton('*'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildButton('4', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('4')),
                          buildButton('5', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('5')),
                          buildButton('6', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('6')),
                          buildOperatorButton('-'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildButton('1', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('1')),
                          buildButton('2', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('2')),
                          buildButton('3', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('3')),
                          // buildCalculateButton(),
                          buildOperatorButton('+'),
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     buildButton('0', () => appendDigit('0')),
                    //     buildOperatorButton('+/-'),
                    //     buildOperatorButton('.'),
                    //     buildButton('AC', clearAll),
                    //   ],
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildButton('0', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('0')),
                          // buildOperatorButton('+/-'),
                          // buildOperatorButton('.'),
                          // buildButton('AC', clearAll),
                          buildButton('+/-', Color(0xFFFAFAFA),
                              Color(0xFF282828), () => appendDigit('+/-')),
                          buildButton('.', Color(0xFFFAFAFA), Color(0xFF282828),
                              () => appendDigit('.')),

                          buildCalculateButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildButton(String text, Function onPressed) {
  //   return ElevatedButton(
  //     onPressed: () {
  //       onPressed();
  //       setState(() {});
  //     },
  //     child: Text(text),
  //   );
  // }

  Widget buildButton(
      String text, Color color, Color txtColor, Function onPressed) {
    return GestureDetector(
      onTap: () {
        onPressed();
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0, top: 3),
        child: Container(
          width: 76.82,
          height: 76.82,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.97),
            ),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: txtColor, fontSize: 25),
          )),
        ),
      ),
    );
  }

  void clearAll() {
    setState(() {
      expressionController.text = '';
      result = '';
    });
  }

  void clearLast() {
    String currentText = expressionController.text;
    if (currentText.isNotEmpty) {
      expressionController.text =
          currentText.substring(0, currentText.length - 1);
    }
  }

  void appendDigit(String digit) {
    expressionController.text += digit;
  }

  // Widget buildOperatorButton(String operator) {
  //   return ElevatedButton(
  //     onPressed: () {
  //       expressionController.text += operator == '+/-' ? '-' : operator;
  //       setState(() {});
  //     },
  //     child: Text(operator),
  //   );
  // }

  // Widget buildOperatorButton(String operator) {
  //   return GestureDetector(
  //     onTap: () {
  //       // expressionController.text += operator == '+/-' ? '-' : operator;
  //       // setState(() {});
  //       if (operator == '%') {
  //         expressionController.text += '* 0.01';
  //       } else if (operator == '') {
  //         expressionController.text += '/';
  //       } else {
  //         expressionController.text += operator == '+/-' ? '-' : operator;
  //       }
  //       setState(() {});
  //     },
  //     child: Container(
  //       width: 76.82,
  //       height: 76.82,
  //       decoration: ShapeDecoration(
  //         color: Color(0xFF3868CE),
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10.97),
  //         ),
  //       ),
  //       child: Center(child: Text(operator)),
  //     ),
  //   );
  // }

  Widget buildOperatorButton(String operator) {
    return GestureDetector(
      onTap: () {
        if (operator == '%') {
          expressionController.text += '* 0.01';
        } else if (operator == '÷') {
          expressionController.text += '/';
        } else if (operator == '×') {
          expressionController.text += '*';
        } else {
          expressionController.text += operator == '+/-' ? '-' : operator;
        }
        setState(() {});
      },
      child: Container(
        width: 76.82,
        height: 76.82,
        decoration: ShapeDecoration(
          color: Color(0xFF3868CE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.97),
          ),
        ),
        child: Center(child: Text(getOperatorSymbol(operator))),
      ),
    );
  }

  String getOperatorSymbol(String operator) {
    switch (operator) {
      case '÷':
        return '÷';
      case '×':
        return '×';
      default:
        return operator;
    }
  }

  Widget buildCalculateButton() {
    return GestureDetector(
      onTap: (calculateResult),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 76.82,
          height: 76.82,
          decoration: ShapeDecoration(
            color: Color(0xFF3868CE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.97),
            ),
          ),
          child: Center(child: Text('=')),
        ),
      ),
    );
  }

  Widget buildTextWithStyle() {
    String expression = expressionController.text;
    List<TextSpan> spans = [];

    for (int i = 0; i < expression.length; i++) {
      String char = expression[i];

      spans.add(TextSpan(
        text: char,
        style: TextStyle(
          color: char == '+' || char == '-'  || char == '*' || char == '/' ? plusMinusColor : Colors.black,
          fontSize: 20.0,
        ),
      ));
    }

    // spans = spans.reversed.toList();

    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 20.0),
        children: spans,
      ),
    );
  }

  void calculateResult() {
    String expression = expressionController.text;

    try {
      result = evaluateExpression(expression).toString();
      print(result);
    } catch (e) {
      result = 'Error';
    }

    setState(() {});
  }



  double evaluateExpression(String expression) {
    List<String> operators = ['+', '-','*'];
    String currentNumber = '';
    double result = 0.0;
    String currentOperator = '+';

    for (int i = 0; i < expression.length; i++) {
      String char = expression[i];

      if (operators.contains(char)) {
        result =
            applyOperator(result, double.parse(currentNumber), currentOperator);
        currentNumber = '';
        currentOperator = char;
      } else {
        currentNumber += char;
      }
    }

    result =
        applyOperator(result, double.parse(currentNumber), currentOperator);

    return result;
  }

  double applyOperator(double result, double operand, String operator) {
    if (operator == '+') {
      return result + operand;
    } else if (operator == '-') {
      return result - operand;
    } else if (operator == '*') {
      return result * operand;
    }
    return result;
  }

  @override
  void dispose() {
    expressionController.dispose();
    super.dispose();
  }
}
