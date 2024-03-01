import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/model/customerlist/customerlist.dart';
import 'package:untitled/model/peoductList/productlist.dart';
import 'package:untitled/model/stck_detls_lst.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'package:untitled/screens/customerlist/customer_list3.dart';
import 'package:untitled/screens/new_sale/new_sale.dart';
import 'package:untitled/screens/new_sale/new_sale2.dart';
import 'package:untitled/widgets/colors.dart';
import 'package:untitled/widgets/widgets.dart';
import 'package:untitled/widgets/widgets1.dart';

class CashPayment extends StatefulWidget {
  final CustomerListDetails? customerDetails;

  CashPayment({this.customerDetails, Key? key}) : super(key: key);

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
   // CustomerListDetails? customerDetails;
 late List<ProductList> productList1=[];
 // late List<ProductList> productList1=[];
  double heightOfSingleItem =
      65.0; // Change the value based on your item height
  double verticalSpacingBetweenItems = 8.0;

  // var creditAmount = 0; // New variable to hold the calculated credit amount
  double creditAmount = 0.0; // Use double instead of int
  double creditAmount2 = 0.0;

  var sum = 0;
  late List<dynamic> decodedData;
  @override
  void initState()  {
    super.initState();
    initializeData();

  }
  Future initializeData() async {
    await getListFromPrefs();

    if (widget.customerDetails != null) {
      // customerDetails = widget.customerDetails!;
      print("_________________________________________________________________");
      // print(customerDetails);


      // Check if productList1 is still null, and set it to an empty list

      print(productList1.length);
      print("+++++++++++++++++++++++++++++++++++++++++");
      print(sum);
    }
  }
  void updateSum() {
    setState(() {
      sum = productList1.fold(
          0, (prev, product) => prev + (product.quantity * product.unitprice));
    });
  }


  Future<List<ProductList>?> getListFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = prefs.getString('productList');

    if (jsonData != null) {
      decodedData = jsonDecode(jsonData);
      productList1 = List<ProductList>.from(decodedData
          .map((item) => ProductList.fromJson(item))
          .toList()
          .cast<ProductList>());

      print("ProductList Information:");
      updateSum();

      for (var product in productList1) {
        print("Title: ${product.title}");
        print("Product ID: ${product.productId}");
        print("Quantity: ${product.quantity}");
        print("Stock Number: ${product.stknmbr}");
        print("Unit Price: ${product.unitprice}");
        print("Image: ${product.image}");
        print("Product Amount: ${product.productAmount}");
        print("Is Added: ${product.is_Added}");
        print("---------------");
      }

      print(productList1[2].title);
      print(widget.customerDetails?.name);
      print(productList1.length);

      return productList1;

    } else {
      return null;
    }
  }














  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient:myGradient,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // Center the children horizontally
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewSale2(),
                          ),
                        );
                      },
                      // child: Container(
                      //   width: 24,
                      //   height: 24,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       image:
                      //       AssetImage('assets/icons/left_arrow.png'),
                      //       // Replace 'your_image.png' with the actual path to your asset image
                      //       fit: BoxFit.cover, // Adjust the fit as needed
                      //     ),
                      //     // You can also add other decoration properties here, such as borderRadius, border, color, etc.
                      //   ),
                      // ),

                      child: backArrow(),
                    ),
                    SizedBox(width: 118),
                    // Add a SizedBox for some space between icon and text
                    // Text(
                    //   'Payment',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     color: Color(0xFFFEFEFE),
                    //     fontSize: 20,
                    //     fontFamily: 'Mulish',
                    //     fontWeight: FontWeight.w700,
                    //     height: 0,
                    //   ),
                    // ),

                    appBarTitle('Payment'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                      child: Container(
                        width: 396,
                        height: 304,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0, right: 20),
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
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 15.0),
                              child: cashContainer1(context,"*", widget.customerDetails?.name ??"Customer Name", true),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: cashContainer1(context,"*", widget.customerDetails?.phoneNumber ??"Phone no", false),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: cashContainer1(context,"*", widget.customerDetails?.address??"Address", false),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                      // child: ContainerWithScreenSize(
                      //     items: productList1!,
                      //     sum: sum,
                      //     creditAmount: creditAmount,
                      //     creditAmount2: creditAmount2),
                      child: Container(
              
                        // width: 388,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          child: Column(
                            children: [
                              Container(
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
                                height: productList1.length *
                                    (heightOfSingleItem + verticalSpacingBetweenItems* 2.9),
                                // height: 200,
                                // color: Colors.white,
                                child:
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: productList1.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Container(
                                            padding: EdgeInsets.only(
                                                left: 22.0, right: 22.0, bottom: 8.0, top: 5),
                                            // decoration: BoxDecoration(
                                            //   border: Border.all(color: Colors.grey),
                                            //   borderRadius: BorderRadius.circular(8.0),
                                            // ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 97,
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
                                                          stkItm1(productList1[index].title,
                                                              Color(0xFF282828), 16),
                                                          stkItm1(
                                                              productList1[index].stknmbr.toString(),
                                                              Color(0xFF7A7A7A),
                                                              14),
                                                          // stkItm1(
                                                          //     '(In Stk: 100)', Color(0xFF2E7229), 12),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 31,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(1.0),
                                                            child: Text(
                                                              productList1[index].quantity.toString(),
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
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 60,
                                                      child: Text(
                                                        '৳${(productList1[index].quantity * productList1[index].unitprice).toString()}',
                                                        textAlign: TextAlign.right,
                                                        style: TextStyle(
                                                          color: Color(0xFF282828),
                                                          fontSize: 16,
                                                          fontFamily: 'Mulish',
                                                          fontWeight: FontWeight.w500,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Divider(
                                                  height: 1,
                                                )
                                                // horizontalLine()
                                              ],
                                            ),
                                          );
                                        },
                                      ),
              
              
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,right:20),
                                child: Container(
                                  width: 369,
                                  height: 37,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF3868CE),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
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
                                          "${sum}",
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
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,right: 14.0,top:8),
                                child: Container(
                                  width: 369,
                                  height: 67,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Cash',
                                          style: TextStyle(
                                            color: Color(0xFF282828),
                                            fontSize: 16,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        Container(
                                          width: 152,
                                          height: 60,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 14.0,right: 5,top: 5),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '৳',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: Color(0xFF282828),
                                                    fontSize: 16,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 67,
                                                    child: Align(
                                                      alignment: Alignment.centerRight,
                                                      child: TextFormField(
                                                          keyboardType: TextInputType.number,
                                                          textAlign: TextAlign.right,
                                                          // Align the text to the right
                                                          decoration: InputDecoration(
                                                            border: InputBorder
                                                                .none, // Remove the underline
                                                          ),
              
                                                          style: TextStyle(
                                                            color: Color(0xFF282828),
                                                            fontSize: 16,
                                                            fontFamily: 'Mulish',
                                                            fontWeight: FontWeight.w700,
                                                            height: 0,
                                                          ),
                                                          onChanged: (value) {
                                                            double enteredValue =
                                                                double.tryParse(value) ?? 0.0;
              
                                                            // setState(() {
                                                            //   creditAmount4 = creditAmount3 =
                                                            //       sum - enteredValue;
                                                            //   print(sum);
                                                            //   print(creditAmount3);
                                                            //   double enteredValue = double.tryParse(value) ?? 0.0;
                                                            //
                                                            //   setState(() {
                                                            //     // Update the quantity or any other changes to the productList1
                                                            //   });
                                                            //   updateSum();
                                                            //
                                                            // });
              
                                                            setState(() {
                                                              creditAmount2 = sum - enteredValue;
                                                              print(creditAmount2);
                                                            });
              
                                                            // Assuming the entered value is the credit amount
              
                                                            // Perform any additional logic with the creditAmount if needed
                                                          },
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 27.0,right: 25.0,top:8,bottom: 20),
                                child: Container(
                                  width: 369,
                                  height: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Credit", // Display the calculated credit amount
                                          style: TextStyle(
                                            color: Color(0xFF282828),
                                            fontSize: 16,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        Container(
                                          width: 152,
                                          height: 67,
                                          child: Text(
                                            (creditAmount2 != null && creditAmount2! > 0)
                                                ? creditAmount2.toString()
                                                : '0',
              
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
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12,top:8,bottom: 8),
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
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);

                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => NewSale2(),
                                  //   ),
                                  // );
                                },
                                child: DottedBorder(
                                  color: Color(0xFF3868CE),
                                  // Border color
                                  strokeWidth: 1,
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
                                      borderRadius:
                                          BorderRadius.circular(999), // Border radius
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
          ],
        ),
      ),
    );
  }
}

class ContainerWithScreenSize extends StatefulWidget {
  // final List<StckDtls> items = [
  //   StckDtls("Item 1", "Subtitle 1"),
  //   StckDtls("Item 2", "Subtitle 2"),
  //   StckDtls("Item 3", "Subtitle 3"),
  //   // Add more data items as needed
  // ];
  final List<ProductList> items;
  int sum;
  double creditAmount;
  double creditAmount2;

  ContainerWithScreenSize(
      {required this.items,
      required this.sum,
      required this.creditAmount,
      required this.creditAmount2});

  @override
  State<ContainerWithScreenSize> createState() =>
      _ContainerWithScreenSizeState();
}

class _ContainerWithScreenSizeState extends State<ContainerWithScreenSize> {
  double heightOfSingleItem =
      65.0; // Change the value based on your item height
  double verticalSpacingBetweenItems = 8.0;
  double? creditAmount3;
  double? creditAmount4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("(((((((((((((((((((((((((((((((((((((((((((((((((((((((((");

    print(widget.items.length);
  }

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
              height: widget.items.length *
                  (heightOfSingleItem + verticalSpacingBetweenItems),
              color: Colors.white,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 22.0, right: 22.0, bottom: 8.0, top: 5),
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey),
                    //   borderRadius: BorderRadius.circular(8.0),
                    // ),
                    child: Column(
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 97,
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
                                  stkItm1(widget.items[index].title,
                                      Color(0xFF282828), 16),
                                  stkItm1(
                                      widget.items[index].stknmbr.toString(),
                                      Color(0xFF7A7A7A),
                                      14),
                                  // stkItm1(
                                  //     '(In Stk: 100)', Color(0xFF2E7229), 12),
                                ],
                              ),
                            ),
                            Container(
                              width: 31,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Text(
                                      widget.items[index].quantity.toString(),
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
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              child: Text(
                                '৳${(widget.items[index].quantity * widget.items[index].unitprice).toString()}',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF282828),
                                  fontSize: 16,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          height: 1,
                        )
                        // horizontalLine()
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right:20),
              child: Container(
                width: 369,
                height: 37,
                decoration: ShapeDecoration(
                  color: Color(0xFF3868CE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
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
                        "${widget.sum}",
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 14.0,top:8),
              child: Container(
                width: 369,
                height: 67,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash',
                        style: TextStyle(
                          color: Color(0xFF282828),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Container(
                        width: 152,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14.0,right: 5,top: 5),
                          child: Row(
                            children: [
                              Text(
                                '৳',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF282828),
                                  fontSize: 16,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 67,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        textAlign: TextAlign.right,
                                        // Align the text to the right
                                        decoration: InputDecoration(
                                          border: InputBorder
                                              .none, // Remove the underline
                                        ),

                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 16,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                        onChanged: (value) {
                                          double enteredValue =
                                              double.tryParse(value) ?? 0.0;

                                          setState(() {
                                            creditAmount4 = creditAmount3 =
                                                widget.sum - enteredValue;
                                            print(widget.sum);
                                            print(creditAmount3);
                                          });

                                          // Assuming the entered value is the credit amount
                                          //creditAmount2 = sum - creditAmount;
                                          // print(creditAmount);
                                          // Perform any additional logic with the creditAmount if needed
                                        },
                                      ),
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0,right: 25.0,top:8,bottom: 20),
              child: Container(
                width: 369,
                height: 20,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Credit", // Display the calculated credit amount
                        style: TextStyle(
                          color: Color(0xFF282828),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Container(
                        width: 152,
                        height: 67,
                        child: Text(
                          (creditAmount3 != null && creditAmount3! > 0)
                              ? creditAmount3.toString()
                              : '0',
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

Widget stkItm1(String text, Color color, double fontSize) {
  return Container(
    width: 97,
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
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

Widget cashContainer1(BuildContext context,String strText, String hints, bool w) {
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
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: TextFormField(
                style: TextStyle(
                  color: Color(0xFF939598),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  // overflow: ,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hints,
                    hintStyle: TextStyle(color: Color(0xFF939598))),
              ),
            ),
          ),
          Visibility(
            visible: w,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomerList3(),
                  ),
                );
              },
              child: Container(
                height: 34,
                width: 34,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/profile.png",
                    color: Color(0xFF939598),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
