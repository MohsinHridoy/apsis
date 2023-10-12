import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/stck_detls_lst.dart';

class CashPayment extends StatefulWidget {
  const CashPayment({super.key});

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        centerTitle: true,// No elevation (no shadow)
        backgroundColor: Color(0xFF3A67C4), // Background color
        // backgroundColor: Color(0xFF3563C2), // Background color
        title:  Text(
          'Cash Payment',
          style: TextStyle(
            color: Color(0xFFFEFEFE),
            // Text color
            fontSize: 20,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios, // Back button icon
            color: Colors.white, // Icon color
          ),
        ),
      ),
      body:  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 1200,
                ),
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
                  left: 14,
                  top: 62,
                  right: 16,
                  child: Container(
                    width: 388,
                    height: 299,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFEFEFE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                            width: 354,
                            child: Text(
                              'Memo ID: 415SADC',
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
                        cashContainer1("*", "Customer name", true),
                        cashContainer1("*", "Customer name", true),
                        cashContainer1("*", "Customer name", false),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 390,
                  left: 30,
                  right: 30,
                  // bottom: 190,
                  child: ContainerWithScreenSize(),
                ),

                Positioned(
                  top: 900,
                  right: 20,
                  left: 20,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              print("click");
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
                                  'Take payment & Print',
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
                            color: Color(0xFF3868CE),
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
                                color: Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.circular(
                                    999), // Border radius
                              ), // Background color
                              child: Center(
                                  child: Text(
                                    'Edit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF3868CE),
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
   
    );
  }
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
                    padding:
                    EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0,top: 5),
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
                                  // stkItm1(
                                  //     '(In Stk: 100)', Color(0xFF2E7229), 12),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                // Container(
                                //   width: 31,
                                //   height: 42,
                                //   decoration: ShapeDecoration(
                                //     color: Color(0xFF3868CE),
                                //     shape: RoundedRectangleBorder(
                                //       side: BorderSide(
                                //           width: 1, color: Color(0xFF3868CE)),
                                //       borderRadius: BorderRadius.circular(10),
                                //     ),
                                //   ),
                                //   // Background color for '-' icon
                                //   child: Center(
                                //     child: Text(
                                //       '-',
                                //       style: TextStyle(
                                //         color: Colors.white,
                                //         fontSize: 16,
                                //         fontFamily: 'Mulish',
                                //         fontWeight: FontWeight.w700,
                                //         height: 0,
                                //       ),
                                //     ),
                                //   ),
                                // ),
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
                                // Container(
                                //   width: 31,
                                //   height: 42,
                                //   decoration: ShapeDecoration(
                                //     color: Color(0xFF3868CE),
                                //     shape: RoundedRectangleBorder(
                                //       side: BorderSide(
                                //           width: 1, color: Color(0xFF3868CE)),
                                //       borderRadius: BorderRadius.circular(10),
                                //     ),
                                //   ),
                                //   // Background color for '-' icon
                                //   child: Center(
                                //     child: Text(
                                //       '+',
                                //       style: TextStyle(
                                //         color: Colors.white,
                                //         fontSize: 16,
                                //         fontFamily: 'Mulish',
                                //         fontWeight: FontWeight.w700,
                                //         height: 0,
                                //       ),
                                //     ),
                                //   ),
                                // ),
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
                        // horizontalLine()
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 369,
              height: 37,
              decoration: ShapeDecoration(
                color: Color(0xFF3868CE),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        color: Color(0xFFFEFEFE),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Text(
                      '৳ 1,570.0',
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
            )
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
Widget cashContainer1(String strText,String hints,bool w ) {
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
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Visibility(
              visible: w,
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
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                style: TextStyle(
                  color:  Color(0xFF939598),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Customer name',
                  hintStyle: TextStyle(color: Color(0xFF939598) )
                ),
              ),
            ),
          ),
          Visibility(visible:w,child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.ac_unit,color:  Color(0xFF939598),),
          ),)
        ],
      ),
    ),
  );
}
