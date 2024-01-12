import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/model/mystock/mystock.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/widgets/dropdownwidget.dart';
import 'package:untitled/widgets/widgets.dart';

class ViewStock extends StatefulWidget {
  final MyStockData11 product;

  const ViewStock({Key? key, required this.product}) : super(key: key);

  @override
  State<ViewStock> createState() => _ViewStockState();
}

class _ViewStockState extends State<ViewStock> {
  File? _image;
  String? imagePath;
  bool buttonVisibility = true;
  bool dottedbuttonVisibility = false;
  var  menuItem="pack";

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

  late MyStockData11 product;

  @override
  void initState() {
    super.initState();
    super.initState();
    product = widget.product;
    imagePath = product.image;
    print(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
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
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // Center the children horizontally
                    children: [
                      Container(
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
                      SizedBox(width: 118),
                      // Add a SizedBox for some space between icon and text
                      Text(
                        'My Stock',
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
              bottom: (_image == null && imagePath == null) ? 15 : 15,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => CustomerSaleHistory(),
                  //   ),
                  // );

                  setState(() {
                    buttonVisibility = false;
                    dottedbuttonVisibility = true;
                  });
                },
                child: Visibility(
                  visible: buttonVisibility,
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
            ),
            Positioned(
                bottom: 15,
                left: 10,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Visibility(
                    visible: dottedbuttonVisibility,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          buttonVisibility = true;
                          dottedbuttonVisibility = false;
                          print(buttonVisibility);
                          print(dottedbuttonVisibility);
                        });
                      },
                      child: DottedBorder(
                        color: Color(0xFF3868CE),
                        // Border color
                        strokeWidth: 0.5,
                        // Border width
                        borderType: BorderType.RRect,
                        // Rounded rectangle border
                        radius: Radius.circular(999),
                        // Border radius
                        // padding: EdgeInsets.all(5), // Padding around the border
                        child: Container(
                          width: 396, // Container width
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius:
                                BorderRadius.circular(999), // Border radius
                          ), // Background color
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 20,
                                  width: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Image.asset(
                                        "assets/icons/edit_icon.png"),
                                  )),
                              Text(
                                'Edit',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF3868CE),
                                  fontSize: 16,
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
                  ),
                )),
            Positioned(
              left: 14,
              top: 100,
              right: 14,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Container(
                  width: 396,
                  height: 450,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Product code: AASADC',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF282828),
                              fontSize: 16,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 15.0),
                        child: cashContainer1("*", product.title, false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1(
                            "*", product.unitprice.toString(), false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1("*", product.stknmbr, false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer2("*", menuItem.toString(), true),
                        // child: cashContainer1("*", "Pack", false),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: cashContainer1(
                            "*", product.quantity.toString(), false),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 580,
              child: Container(
                width: 388,
                height: 170,
                child: Column(
                  children: [
                    DottedBorder(
                      color: Color(0xFF728ABE),
                      strokeWidth: 2,
                      borderType: BorderType.RRect,
                      child: GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            if (_image != null) // Add this check
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 350,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: FileImage(_image!),
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              )
                            else
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 350,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(imagePath!),
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _image = null;
                                    imagePath = null;
                                  });
                                },
                                child: Visibility(
                                  visible: dottedbuttonVisibility,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
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

  Widget cashContainer2(String strText, String hints, bool w) {
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
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xFF939598),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hints,
                    hintStyle: TextStyle(color: Color(0xFF939598)),
                  ),
                  enabled: false, // Set this to make the field non-editable
                ),
              ),
            ),
            Visibility(
              visible: w,
              child: PopupMenuButton<String>(
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Color(0xFF939598),
                ),
                onSelected: (value) {
                  // Handle the selected value
                  print(value);
                  strText==value;
                  setState(() {
                    menuItem = value ?? "pack"; // Use a default value if value is null

                  });
                },
                itemBuilder: (BuildContext context) {
                  // Create a list of PopupMenuItems
                  return ['Pack 1', 'Pack 2', 'Pack 3'].map((String item) {
                    return PopupMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

// Widget cashContainer2(String strText, String hints, bool w, bool isEditable) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Container(
//       width: 354,
//       height: 60,
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//           side: BorderSide(width: 1, color: Color(0xFF88CADA)),
//           borderRadius: BorderRadius.circular(5),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8.0),
//             child: Visibility(
//               visible: w,
//               child: Text(
//                 '*',
//                 style: TextStyle(
//                   color: Color(0xFFEE6161),
//                   fontSize: 16,
//                   fontFamily: 'Mulish',
//                   fontWeight: FontWeight.w500,
//                   height: 0,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 8.0),
//               child: MyDropdownWidget(
//                 initialValue: hints,
//                 items: ['Item 1', 'Item 2', 'Item 3'], // Replace with your items
//                 isEditable: isEditable,
//               ),
//             ),
//           ),
//           Visibility(
//             visible: w,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.ac_unit,
//                 color: Color(0xFF939598),
//               ),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
}
