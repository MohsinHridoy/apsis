import 'package:flutter/material.dart';

class TextPassContainer1 extends StatelessWidget {
  final double? containerWidth;
  final double? containerHeight;
  final Color? containerColor;
  final double? iconWidth;
  final double? iconHeight;
  final Color? iconColor;
  final IconData? iconData;
  final double? iconSize;
  final String? hintText;
  final Color? hintColor;
  final Color? fillColor;
  final double? contentPadding;
  final TextEditingController? controller;

  TextPassContainer1({
    required this.containerWidth,
    required this.containerHeight,
    required this.containerColor,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconColor,
    required this.iconData,
    required this.iconSize,
    required this.hintText,
    required this.hintColor,
    required this.fillColor,
    required this.contentPadding,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: ShapeDecoration(
        color: containerColor!.withOpacity(0.25),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF88CADA)),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 56,
            decoration: ShapeDecoration(
              color: Color(0xFF88CADA),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Container(
              width: iconWidth,
              height: iconHeight,
              decoration: ShapeDecoration(
                color: iconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Icon(iconData, size: iconSize),
            ),
          ),
          Expanded(
            child: PasswordTextField(controller: controller),
          ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController? controller;

  PasswordTextField({this.controller});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        style: TextStyle(color: Colors.white),
        obscuringCharacter: "*",
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8.0),
        ),
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
    );
  }
}
