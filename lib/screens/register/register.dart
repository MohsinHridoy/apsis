import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/login/login.dart';
import 'package:untitled/screens/otp/otp.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3868CE), // Set the desired status bar color
    ));
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF3868CE),
        child:SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'A',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 89.57,
                                fontFamily: 'Monomaniac One',
                                fontWeight: FontWeight.bold,
                                height: 0,
                                letterSpacing: -31.35,
                              ),
                            ),
                            TextSpan(
                              text: 'A',
                              style: TextStyle(
                                color: Color(0xFF88CADA),
                                fontSize: 89.57,
                                fontFamily: 'Monomaniac One',
                                fontWeight: FontWeight.bold,
                                height: 0,
                                letterSpacing: -31.35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    width: 396,
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

                              hintText: 'Enterprise Name',
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
                  SizedBox(height: 20,),

                  Container(
                    width: 396,
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

                              hintText: 'Enterprise type',
                              hintStyle: TextStyle(color: Colors.white),
                              // border: InputBorder.none, // Removes the underline border
                              // filled: true,
                              fillColor: Color(0xFF3868CE), // Background color
                              contentPadding: EdgeInsets.all(16.0), // Padding inside the input field
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left:128.0),
                          child: Icon(Icons.arrow_drop_down,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    width: 396,
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

                              hintText: 'Address',
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
                  SizedBox(height: 20,),

                  Container(
                    width: 396,
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

                              hintText: 'Mobile no.',
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
                  SizedBox(height: 20,),

                  Container(
                    width: 396,
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
                          child: PasswordTextField()
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Otp()), // Navigate to Page 2
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
                          'Register',
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
        ) ,
      ),
    );
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