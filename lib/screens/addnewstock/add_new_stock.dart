import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/widgets/widgets.dart';


class AddNewStock extends StatefulWidget {
  const AddNewStock({super.key});

  @override
  State<AddNewStock> createState() => _AddNewStockState();
}

class _AddNewStockState extends State<AddNewStock> {
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
    return Scaffold(
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
                      SizedBox(width: 98),
                      // Add a SizedBox for some space between icon and text
                      Text(
                        'Abdul Miah',
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
              top: _image == null ? 625 : 755,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerSaleHistory(),
                    ),
                  );
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
              top: 100,
              right: 14,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Container(
                  width: 396,
                  height: 400,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 15.0),
                        child: cashContainer1("*", "Product name", false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1("*", 'Purchase Price.', false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1("*", "Selling Price", false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1("*", "Packajing Price", false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1("*", "Packajing Type", false),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 530,
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
}
