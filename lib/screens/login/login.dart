import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/register/register.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3868CE), // Set the desired status bar color
    ));
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF3868CE),
          child: SingleChildScrollView(
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,top: 3.0),
                                child: Container(
                                  width: 11,
                                  height: 11,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:4.0),
                                child: Text(
                                  'apsis solutions',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 42.0,top:3),
                          child: Row(
                            children: [

                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'A',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 144.57,
                                        fontFamily: 'Monomaniac One',
                                        fontWeight: FontWeight.bold,
                                        height: 0,
                                        letterSpacing: -50.40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'A',
                                      style: TextStyle(
                                        color: Color(0xFF88CADA),
                                        fontSize:144.57,
                                        // fontFamily: 'Monomaniac One',
                                        fontWeight: FontWeight.bold,
                                        height: 0,
                                        letterSpacing: -50.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width-20,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),

                            child:Padding(
                              padding: const EdgeInsets.only(right:158.0),
                              child: Container(
                                width: 183,
                                height: 63,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF88CADA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                ),
                              ),
                            ),

                        ),
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left:108.0,right: 12.0),
                        child: Container(
                          width:  MediaQuery.of(context).size.width-20,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(left:128.0),
                            child: Container(
                              width: 183,
                              height: 63,
                              decoration: ShapeDecoration(
                                color: Color(0xFF88CADA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(999),
                                ),
                              ),
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 100,),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width-20,
                          height: 56,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0.25),
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: [
                                          Icon(Icons.abc_sharp)
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  style:TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,

                                    hintText: 'Enter your text',
                                    hintStyle: TextStyle(color: Colors.white),
                                    // border: InputBorder.none, // Removes the underline border
                                    // filled: true,
                                    fillColor: Color(0xFF3868CE), // Background color
                                    contentPadding: EdgeInsets.all(16.0), // Padding inside the input field
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 6,),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 1.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width-20,
                          height: 56,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0.25),
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                                ),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: [
                                          Icon(Icons.abc_sharp)
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(child: PasswordTextField())
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),

                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()), // Navigate to Page 2
                            );
                          } ,
                        child: Container(
                          width: 396,
                          height: 56,
                          decoration: ShapeDecoration(
                            color: Color(0xFF88CADA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x59293072),
                                blurRadius: 22,
                                offset: Offset(2, 7),
                                spreadRadius: -2,
                              )
                            ],
                          ),

                          child: Center(
                            child: Text(
                              'Log in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          ),

        ),
      ),
    );;
  }
}


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