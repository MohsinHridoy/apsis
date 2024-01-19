import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/model/customerlist/customerlist.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'dart:io';

import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/widgets/widgets.dart';

class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({super.key});

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _creditAmountController = TextEditingController();
  File? _image;
  CustomerListDetails? _customerDetails;


  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 428,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF2F73FE), Color(0x00D0DFEB)],
            ),
          ),
        child: Stack(
          children: [

            Positioned(
              // left: 124,
              top: 42,
              left: 10,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // Center the children horizontally
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/left_arrow.png'),
                              // Replace 'your_image.png' with the actual path to your asset image
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                            // You can also add other decoration properties here, such as borderRadius, border, color, etc.
                          ),
                        ),
                      ),
                      SizedBox(width: 65),
                      // Add a SizedBox for some space between icon and text
                      Text(
                        'Add New Customer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFEFEFE),
                          fontSize: 20,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          height: 0,
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
              top: _image == null ? 625 : 725,
              child: GestureDetector(
                onTap: () {
                  _customerDetails = CustomerListDetails(
                    name: _nameController.text,
                    role: _phoneController.text,
                    amount: double.tryParse(_creditAmountController.text) ?? 0.0,
                    creditStatus: "",  // You need to set the credit status accordingly
                    profileImage: _image != null ? _image!.path : "", // You need to set the profile image accordingly
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerList(
                        customerDetails: _customerDetails,
                      ),
                    ),
                  );

                  if (_customerDetails != null) {
                    print(_customerDetails!.name);
                  }

                },
                child: Container(
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
              left: 14,
              top: 110,
              right: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Container(
                  width: 396,
                  height: 360,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 15.0),
                        child: cashContainer1("*", "Customer name", true, false, _nameController),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                        child: cashContainer1("*", "Phone no", true, false, _phoneController),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                        child: cashContainer1("*", "Address", false, false, _addressController),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                        child: cashContainer1("", "Credit Amount", true, false, _creditAmountController),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 25,
              right: 25,
              top: 500,
              child: Container(
                width: 388,
                child: Column(
                  children: [
                    DottedBorder(
                      color: Color(0xFF728ABE),
                      // Border color
                      strokeWidth: 2,
                      // Border width
                      borderType: BorderType.RRect,
                      // Rounded rectangle border
                      // radius: Radius.circular(999),
                      // Border radius
                      // padding: EdgeInsets.all(5), // Padding around the border
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: _image == null
                            ? GestureDetector(
                              onTap: (){
                                _pickImage();

                              },
                              child: Container(
                                  width: 396,
                                  // Container width
                                  height: 66,
                                  // Container height
                                  // decoration: BoxDecoration(
                                  //   color: Color(0xFFFDE3E5),
                                  //   // borderRadius: BorderRadius.circular(999), // Border radius
                                  // ), // Background color
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Icon(Icons.camera_alt),
                                      Text(
                                        'Take Photo',
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
                                ),
                            )
                            : Stack(
                                children: [
                                  Container(
                                    width: 396,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: FileImage(_image!),
                                        // Assuming _image is your image
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top:
                                        10, // Adjust the top position as needed
                                    right:
                                        10, // Adjust the right position as needed
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _image = null;
                                        });// Add your logic to remove the image here
                                      },
                                      child: Icon(
                                        Icons.close,
                                        // You can change the icon to your preference
                                        color: Colors
                                            .red, // You can change the color to your preference
                                      ),
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
          ],
        ),
      ),
    );
  }
  Widget cashContainer1(String strText,String hints,bool star,bool profile,TextEditingController controller ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Visibility(
                visible: star,
                child: Text(
                  '*',
                  style: TextStyle(
                    color: Color(0xFFEE6161),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: TextFormField(
                  controller: controller, // Add this line to bind the controller

                  style: TextStyle(
                    color:  Color(0xFF939598),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    // overflow: ,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hints,

                      hintStyle: TextStyle(color: Color(0xFF939598) )
                  ),
                ),
              ),
            ),
            Visibility(visible:profile,child: Container(
              height: 34,
              width: 34,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/icons/profile.png",color:  Color(0xFF939598),),
              ),
            ),)
          ],
        ),
      ),
    );
  }

}
