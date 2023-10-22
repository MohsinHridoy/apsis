
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';



class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({super.key});

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: 428,
        height: 926,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFF6F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 428,
                height: 279,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.06, -1.00),
                    end: Alignment(-0.06, 1),
                    colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
                  ),
                ),
              ),
            ),
            Positioned(
              // left: 124,
              top: 42,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 78.0),
                        child: Text(
                            'Add new customer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFEFEFE),
                              fontSize: 20,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 20,
              right: 20,
              top: 625,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerSaleHistory(),
                    ),
                  );
                },
                child:Container(
                  width: 388,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Color(0xFF3868CE),
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
                      'Add new customer',
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
              ),
            ),
            Positioned(
              left: 20,
              top: 133,
              right: 20,
              child: Container(
                width: 388,
                height: 332,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 388,
                        height: 332,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 23,
                      right: 16,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,

                      top: 99,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      top: 175,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      top: 251,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 41,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFEE6161),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Customer name',
                              style: TextStyle(
                                color: Color(0xFF939598),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 117,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFEE6161),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Phone No.',
                              style: TextStyle(
                                color: Color(0xFF939598),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 193,
                      child: Text(
                        'Address',
                        style: TextStyle(
                          color: Color(0xFF939598),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 269,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFEE6161),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Credit amount',
                              style: TextStyle(
                                color: Color(0xFF939598),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 481,
              child: Container(
                width: 388,
                height: 106,
                child: Stack(
                  children: [

                    Positioned(
                      left: 8,
                      top: 25,
                      right: 8,
                      child:DottedBorder(
                        color:  Color(0xFF728ABE),
                        // Border color
                        strokeWidth: 2,
                        // Border width
                        borderType: BorderType.RRect,
                        // Rounded rectangle border
                        // radius: Radius.circular(999),
                        // Border radius
                        // padding: EdgeInsets.all(5), // Padding around the border
                        child: GestureDetector(
                          onTap: (){
                            _pickImage();

                          },
                          child: Container(
                            width: 396, // Container width
                            height: 66, // Container height
                            // decoration: BoxDecoration(
                            //   color: Color(0xFFFDE3E5),
                            //   // borderRadius: BorderRadius.circular(999), // Border radius
                            // ), // Background color
                            child:_image == null?Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Icon(Icons.camera_alt),
                                  Text(
                                        'Reset',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF7A7A7A),
                                          fontSize: 16,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                ],
                              ),
                            )                : Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: FileImage(_image!),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                          ),
                        ),
                      ) ,
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
}
