import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false; // Initially, password is obscured

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        obscureText: _obscureText,
        style: TextStyle(color: Colors.white),
        obscuringCharacter: "*",
        // Obscure text when true
        decoration: InputDecoration(
          hintText: 'Password', // Hint text
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          // Remove the underline border

          // fillColor: Colors.grey[200], // Background color
          contentPadding: EdgeInsets.all(8.0), // Padding inside the input field
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


