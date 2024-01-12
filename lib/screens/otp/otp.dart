import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/dashboard/dashboard.dart';
import 'package:untitled/screens/login/login.dart';
import 'package:untitled/screens/register/register.dart';
import 'package:untitled/widgets/colors.dart';
import 'package:untitled/widgets/containerWidget.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3868CE), // Set the desired status bar color
    ));
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF3868CE),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      maxLength: 4,
                      decoration: InputDecoration(
                        counterText: '', // Remove the character count display
                        hintText: 'Enter 4 digit OTP',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none, // Remove the underline
                        fillColor: Color(0xFF3868CE), // Background color
                        contentPadding: EdgeInsets.all(16.0), // Padding inside the input field
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()), // Navigate to Page 2
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                    child: MyStaticContainer.containerButton(
                      width: 396,
                      height: 56,
                      color: customColor,
                      borderRadius: 999,
                      shadowColor: colorBluishGray,
                      shadowBlurRadius: 22,
                      shadowOffset: Offset(2, 7),
                      shadowSpreadRadius: -2,
                      buttonText: 'Confirm',
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
