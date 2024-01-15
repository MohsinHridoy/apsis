import 'package:flutter/material.dart';
import 'package:untitled/model/peoductList/productlist.dart';
import 'package:untitled/screens/alert/alert.dart';
import 'package:url_launcher/url_launcher.dart';

import '../receive_cash/receive_cash.dart';

class CustomerSaleHistory001 extends StatefulWidget {
  const CustomerSaleHistory001({super.key});

  @override
  State<CustomerSaleHistory001> createState() => _CustomerSaleHistory001State();
}

class _CustomerSaleHistory001State extends State<CustomerSaleHistory001> {
  double heightOfSingleItem =
      80.0; // Change the value based on your item height
  double verticalSpacingBetweenItems = 8.0;

  // var creditAmount = 0; // New variable to hold the calculated credit amount
  double creditAmount = 0.0; // Use double instead of int
  double creditAmount2 = 0.0;
  List<ProductList> productListItems = [
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    ProductList(
      title: 'Product 1',
      productId: '123456',
      quantity: 5,
      stknmbr: '150 ml',
      unitprice: 25,
      image: 'assets/images/product1.png',
      productAmount: 125.00,
      is_Added: false,
    ),
    // Add more ProductList items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
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
            SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                appBar(),

                customerDetails(),

                Container(
                    // height: productListItems.length *
                    //     (heightOfSingleItem + verticalSpacingBetweenItems),
                    // width: 388,
                    decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          height: productListItems.length *
                              (heightOfSingleItem +
                                  verticalSpacingBetweenItems),
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: productListItems.length,
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
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              stkItm1(
                                                  productListItems[index].title,
                                                  Color(0xFF282828),
                                                  16),
                                              stkItm1(
                                                  productListItems[index]
                                                      .stknmbr
                                                      .toString(),
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
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Text(
                                                  productListItems[index]
                                                      .quantity
                                                      .toString(),
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
                                            '৳${(productListItems[index].quantity * productListItems[index].unitprice).toString()}',
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
                        Container(
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
                                  "190",
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
                        Container(
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),


              ],
            ),
          ),
            Positioned(
              bottom: 40,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReceiveCash(),
                    ),
                  );
                },
                child: Container(
                  width: 195,
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
                      '+ Receive Cash',
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
            )

          ],
        ),
      ),
    );
  }

  Widget customerDetails() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
/*
      color: Colors.red,
*/
      child: Column(
        children: [
          // SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.00),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 138,
              decoration: BoxDecoration(
                // color: Colors.red,
                color: Color(0xFFFEFEFE),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    Container(
                      // width: 0.15 *
                      //     MediaQuery.of(context)
                      //         .size
                      //         .width, // 20% width
                      // height: 138,
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/profile_image.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 5, // 50% width
                      child: Container(
                        height: 138,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Miah',
                                style: TextStyle(
                                  color: Color(0xFF282828),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'Wholesaler',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              // SingleChildScrollView(
                              //   scrollDirection: Axis.vertical,
                              //   child: Text(
                              //     '85, Near Devraya Sports Club, Inimoli, Building No. 51, Mahalgaon, South Goa, Goa, Pincode-420253',
                              //     style: TextStyle(
                              //       color: Color(0xFF7A7A7A),
                              //       fontSize: 12,
                              //       fontFamily: 'Mulish',
                              //       fontWeight: FontWeight.w400,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 70,
                                width: 150,
                                child: Text(
                                  '85, Near Devraya Sports Club, Inimoli, Building No. 51, Mahalgaon, South Goa, Goa, Pincode-420253',
                                  style: TextStyle(
                                    color: Color(0xFF7A7A7A),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    height: 0,
                                    fontWeight: FontWeight.w400,
                                  ),

                                  overflow: TextOverflow.ellipsis,
                                  maxLines:
                                      4, // Adjust the number of lines based on your needs
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4, // 30% width
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchPhoneDialer('tel:+918888888888');
                              },
                              child: Row(
                                children: [
                                  // Icon(Icons.call, size: 11),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 4.0),
                                    child: Image.asset(
                                        "assets/icons/call_icon.png",
                                        width: 15,
                                        height: 15),
                                  ),
                                  Text(
                                    '01789455478',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 12.0, top: 3, left: 1),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Alert(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 109,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDFF6FF),
                                    // color: Colors.red,
                                    border: Border.all(
                                        width: 0.50, color: Color(0xFF88CADA)),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      // Icon(Icons.sms_rounded, size: 11),
                                      Image.asset(
                                        "assets/icons/mail.png",
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Send alert',
                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 12,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        width: 38,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFD0BB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Center(
                          child: Container(
                            width: 24,
                            height: 24,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.orange,
                                // Change this to the desired color (e.g., Color(0xFFFFD0BB))
                                BlendMode.srcATop,
                              ),
                              child:
                                  Image.asset("assets/icons/personalcard1.png"),
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Total credit amount ',
                        style: TextStyle(
                          color: Color(0xFF282828),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      '৳ 16,547.00',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFEE6161),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _launchPhoneDialer(String phoneNumber) async {
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  Widget appBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align the children to the start (left) of the row
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
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
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
                        left: 8.0, right: 8.0, bottom: 8.0, top: 5),
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
            Container(
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
            Container(
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
                        padding: const EdgeInsets.all(2.0),
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
                            Container(
                              width: 132,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 369,
              height: 67,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "credit", // Display the calculated credit amount
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
