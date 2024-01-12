import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/model/stck_detls_lst.dart';
import 'package:untitled/screens/cashpayment/cash_payment.dart';
import 'package:untitled/screens/creaditpayment/creadit_payment.dart';
import 'package:untitled/widgets/widgets.dart';

class QcStock extends StatefulWidget {
  const QcStock({super.key});

  @override
  State<QcStock> createState() => _QcStockState();
}

class _QcStockState extends State<QcStock> {
  LinearGradient gradient1 = LinearGradient(
    colors: [Colors.indigoAccent, Colors.blueGrey],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  bool firstContainerVisible = false;

  void toggleContainers() {
    setState(() {
      firstContainerVisible = !firstContainerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   centerTitle: true,
      //   // No elevation (no shadow)
      //   backgroundColor: Color(0xFF3A67C4),
      //   // Background color
      //   // backgroundColor: Color(0xFF3563C2), // Background color
      //   title: Text(
      //     'Qc Stock',
      //     style: TextStyle(
      //       color: Color(0xFFFEFEFE),
      //       // Text color
      //       fontSize: 20,
      //       fontFamily: 'Mulish',
      //       fontWeight: FontWeight.w700,
      //       height: 0,
      //     ),
      //   ),
      //
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(
      //       Icons.arrow_back_ios, // Back button icon
      //       color: Colors.white, // Icon color
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
// Bottom container (First half)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 1.95,
            child: Container(
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
            top: 42,
            right: 0,
            left: 0,
            child: appBar(context, "Qc Stock", false),
          ),
// Top container (Second half)
          Positioned(
            top: MediaQuery.of(context).size.height / 2.6,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.blueGrey[50],
            ),
          ),
          // Positioned(
          //   top: 15,
          //   child: Container(
          //     padding: EdgeInsets.all(16.0), // Adjust the padding as needed
          //
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.arrow_back_ios, // Replace with your desired icon
          //           size: 20.0,
          //           color: Colors.white,// Adjust the icon size as needed
          //         ),
          //         SizedBox(width: 16.0), // Adjust the spacing between icon and text
          //         Padding(
          //           padding: const EdgeInsets.only(left: 98.0),
          //           child: Text(
          //             'New Sale',
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //               color: Color(0xFFFEFEFE),
          //               fontSize: 20,
          //               fontFamily: 'Mulish',
          //               fontWeight: FontWeight.w700,
          //               height: 0,
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          Positioned(
            top: 100,
            right: 10,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Container(
                width: 388.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                  borderRadius:
                      BorderRadius.circular(10.0), // Set the border radius
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14.0),
                        child: Text(
                          'Search and click ‘Add’',
                          style: TextStyle(
                            color: Color(0xFF7A7A7A),
                            fontSize: 14,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
// Overlay container
          Positioned(
            top: 140,
            left: 30,
            right: 30,
            bottom: 190,
            child: ContainerWithScreenSize(),
          ),
          Positioned(
              bottom: 15,
              left: 10,
              right: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DottedBorder(
                  color: Color(0xFFEE6161),
                  // Border color
                  strokeWidth: 2,
                  // Border width
                  borderType: BorderType.RRect,
                  // Rounded rectangle border
                  radius: Radius.circular(999),
                  // Border radius
                  // padding: EdgeInsets.all(5), // Padding around the border
                  child: Container(
                    width: 396, // Container width
                    height: 56, // Container height
                    decoration: BoxDecoration(
                      color: Color(0xFFFDE3E5),
                      borderRadius: BorderRadius.circular(999), // Border radius
                    ), // Background color
                    child: Center(
                        child: Text(
                      'Reset',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEE6161),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )),
                  ),
                ),
              )),
          Positioned(
              bottom: 100,
              left: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  print(firstContainerVisible);

                  // toggleContainers;
                  setState(() {
                    firstContainerVisible = !firstContainerVisible;
                  });

                  print(firstContainerVisible);
                },
                child: Container(
                  width: 396,
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
                      'Next',
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
              )),

          Positioned(
            // top: MediaQuery.of(context).size.height /
            //     8, // Position it at half the screen height
            bottom: 0,
            child: Visibility(
              visible: firstContainerVisible,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // Set the container width to match the screen width
                height: MediaQuery.of(context).size.height,
                // Set the container height to half the screen height
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Dashboard()), // Navigate to Page 2
                      // );
                      firstContainerVisible = !firstContainerVisible;
                    });
                  },
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 7),
                    child: Container(
                      // height: 800,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Text(
                                      'Are you sure that you want to add ‘46’ items to QC?',
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 20,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CashPayment()), // Navigate to Page 2
                                        );
                                      },
                                      child: Container(
                                        width: 396,
                                        height: 56,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF3868CE),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(999),
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
                                            'Yes',
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DottedBorder(
                                      color: Color(0xFFEE6161),
                                      // Border color
                                      strokeWidth: 2,
                                      // Border width
                                      borderType: BorderType.RRect,
                                      // Rounded rectangle border
                                      radius: Radius.circular(999),
                                      // Border radius
                                      // padding: EdgeInsets.all(5), // Padding around the border
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CreditPayment()), // Navigate to Page 2
                                          );
                                        },
                                        child: Container(
                                          width: 396, // Container width
                                          height: 56, // Container height
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFDE3E5),
                                            borderRadius: BorderRadius.circular(
                                                999), // Border radius
                                          ), // Background color
                                          child: Center(
                                              child: Text(
                                            'Review Again',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFEE6161),
                                              fontSize: 16,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          )),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            child: appBar1(context, "Qc Stock", false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget appBar1(BuildContext context, String title, bool showImage) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 80,
    color: Colors.transparent,
    // color: Color(0xD93E6BCB),
    // decoration: BoxDecoration(
    //   gradient: LinearGradient(
    //     begin: Alignment(0.06, -1.00),
    //     end: Alignment(-0.06, 1),
    //     colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
    //   ),
    // ),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: showImage, // Show the image when 'showImage' is true
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xFF3A67C4),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/55x55"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Visibility(
          visible: !showImage, // Show an icon when 'showImage' is false
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.arrow_back_ios, // Back button icon
              color: Colors.white, // Icon color
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100.0,top:15),
          child: Text(
            title,
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
  );
}

class ContainerWithScreenSize extends StatelessWidget {
  final List<StckDtls> items = [
    StckDtls("Item 1", "Subtitle 1"),
    StckDtls("Item 2", "Subtitle 2"),
    StckDtls("Item 3", "Subtitle 3"),
    // Add more data items as needed
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    // LinearGradient gradient = LinearGradient(
    //   colors: [Colors.blue, Colors.black12],
    //   begin: Alignment.topCenter,
    //   end: Alignment.bottomCenter,
    // );
    return Container(
        // width: 388,
        // height: 456,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Column(
          children: [
            Container(
              width: 388,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFF3868CE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Product',
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Amount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    'Price',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 360,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0, top: 5),
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey),
                    //   borderRadius: BorderRadius.circular(8.0),
                    // ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  // Text(
                                  //   " ${items[index].title}",
                                  //   style: TextStyle(fontSize: 18),
                                  // ),
                                  // Text(
                                  //   "${items[index].subtitle}",
                                  //   style: TextStyle(fontSize: 14),
                                  // ),
                                  stkItm1('Cola', Color(0xFF282828), 16),
                                  stkItm1('250ml', Color(0xFF7A7A7A), 14),
                                  stkItm1(
                                      '(In Stk: 100)', Color(0xFF2E7229), 12),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 31,
                                  height: 42,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF3868CE),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF3868CE)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  // Background color for '-' icon
                                  child: Center(
                                    child: Text(
                                      '-',
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 31,
                                  height: 42,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF3868CE),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF3868CE)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  // Background color for '-' icon
                                  child: Center(
                                    child: Text(
                                      '+',
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
                              ],
                            ),
                            // Container(
                            //   width: 90,
                            //   height: 45,
                            //   child: Text(
                            //     "${items[index].subtitle}",
                            //     style: TextStyle(fontSize: 14),
                            //   ),
                            // ),
                            Text(
                              '৳30.0',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF282828),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        horizontalLine()
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

Widget stkItm1(String text, Color color, double fontSize) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  );
}

Widget horizontalLine() {
  return Container(
    width: 369,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color(0xFFC4C4C4),
        ),
      ),
    ),
  );
}
