import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/register/register.dart';
import 'package:untitled/providers/registrationprovider.dart';
import 'package:untitled/screens/dashboard/dashboard.dart';
import 'package:untitled/screens/login/login.dart';
import 'package:untitled/screens/otp/otp.dart';
import 'package:untitled/widgets/colors.dart';
import 'package:untitled/widgets/passtxtfld.dart';
import 'package:untitled/widgets/widgets.dart';
import 'package:untitled/widgets/containerWidget.dart';

import '../../widgets/textfieldcontainer.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController enterpriseNameController = TextEditingController();
  TextEditingController enterpriseTypeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3868CE), // Set the desired status bar color
    ));
    RegistrationProvider registrationProvider =
        Provider.of<RegistrationProvider>(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF3868CE),
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: MyStaticContainer.createTextContainer("A", "A")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TxtFldCntnr(
                    iconData: Icons.abc,
                    hintText: 'Enterprise Name',
                    controller: enterpriseNameController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
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
                                  child:
                                      Stack(children: [Icon(Icons.abc_sharp)]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,

                              hintText: 'Enterprise type',
                              hintStyle: TextStyle(color: Colors.white),
                              // border: InputBorder.none, // Removes the underline border
                              // filled: true,
                              fillColor: Color(0xFF3868CE),
                              // Background color
                              contentPadding: EdgeInsets.all(
                                  16.0), // Padding inside the input field
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 128.0),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TxtFldCntnr(
                    iconData: Icons.abc,
                    hintText: 'Address',
                    controller: addressController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TxtFldCntnr(
                    iconData: Icons.abc,
                    hintText: 'Mobile No.',
                    controller: mobileNumberController,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // TxtFldCntnr(
                  //   iconData: Icons.abc,
                  //   hintText: 'Enterprise Name',
                  //   controller: enterpriseNameController,
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  TextPassContainer1(
                    containerWidth: 396,
                    containerHeight: 56,
                    containerColor: colorWhite.withOpacity(0.25),
                    iconWidth: 24,
                    iconHeight: 24,
                    iconColor: colorTeal,
                    iconData: Icons.abc,
                    iconSize: 24,
                    hintText: 'PassWord',
                    hintColor: colorWhite,
                    fillColor: customColor1,
                    contentPadding: 16,
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      RegistrationProvider registrationProvider =
                          Provider.of<RegistrationProvider>(context,
                              listen: false);

                      // Create a User object with the entered values
                      User user = User(
                          enterpriseName: enterpriseNameController.text,
                          enterpriseType: enterpriseTypeController.text,
                          address: addressController.text,
                          mobileNumber: mobileNumberController.text,
                          password: passwordController.text
                          // Get the value from the controller or text field,
                          );

                      // Call the registration method
                      await registrationProvider.registerUser(user);
                      print(user.enterpriseName);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Otp()), // Navigate to Page 2
                      );
                    },
                    child: MyStaticContainer.containerButton(
                        width: 396,
                        height: 56,
                        color: customColor,
                        borderRadius: 999,
                        shadowColor: colorBluishGray,
                        shadowBlurRadius: 22,
                        shadowOffset: Offset(2, 7),
                        shadowSpreadRadius: -2,
                        buttonText: 'Register',
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
