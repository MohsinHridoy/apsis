import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/peoductList/productlist.dart';

import '../../widgets/widgets.dart';

class QcStk extends StatefulWidget {
  const QcStk({super.key});

  @override
  State<QcStk> createState() => _QcStkState();
}

class _QcStkState extends State<QcStk> {
  void decreaseQuantity(ProductList product) {
    if (product.quantity > 1) {
      setState(() {
        product.quantity--;
      });
    }
  }

  void increaseQuantity(ProductList product) {
    setState(() {
      product.quantity++;
    });
  }

  bool _searchContainerVisible = true;
  bool firstContainerVisible = false;
  TextEditingController _textEditingController = TextEditingController();

  // List<CustomerListDetails> items = [
  //   CustomerListDetails(
  //       name: 'Abdul Miah',
  //       role: 'Wholesaler',
  //       amount: 16547.00,
  //       creditStatus: 'Credit',
  //       profileImage: 'assets/images/ellipse.png'),
  //   CustomerListDetails(
  //       name: 'Mr. Rony',
  //       role: 'Wholesaler',
  //       amount: 16547.00,
  //       creditStatus: 'Credit',
  //       profileImage: 'assets/images/ellipse.png'),

  //   // Add more items as needed
  // ];
  List<ProductList> filteredItems = [];
  List<ProductList> selectedItems = [];

  List<ProductList> items = [
    ProductList(
        title: 'Product 1',
        productId: '123456',
        quantity: 5,
        stknmbr: '150 ml',
        unitprice: 25,
        image: 'assets/images/product1.png',
        productAmount: 125.00,
        is_Added: false),
    ProductList(
        title: 'Potato Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: 'N/A',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Potato Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: '250 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Potato Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: '250 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Potato Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: '250 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Potato Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: '200 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
  ];

  @override
  void initState() {
    super.initState();
    filteredItems.clear();
    selectedItems.clear();

    // filteredItems = items;
  }

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredItems = 0 as List<ProductList>;
      });
    } else {
      List<ProductList> searchResults = items
          .where(
              (item) => item.title.toLowerCase().contains(query.toLowerCase()))
          .toList();

      setState(() {
        filteredItems = searchResults;
        print(filteredItems.length);
        print(''''''
            ''''''
            ''''''
            ''''''
            ''''''
            ''''''
            ''''''
            ''''''
            ''''''
            ''''''
            '');
      });
    }
  }

  void filterIsAddedResults() {

      List<ProductList> searchResults = items
          .where((item) =>

          item.is_Added == true)
          .toList();

      setState(() {
        selectedItems = searchResults;
        print(selectedItems.length);
      });
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      resizeToAvoidBottomInset: false,
      // Add this line to prevent resizing when the keyboard appears

      body: Stack(
        children: [
// Bottom container (First half)

          Positioned(
            left: 0,
            top: 0,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  filteredItems.length=0;
                  // _searchContainerVisible=false;
                  print("clicked");

                });

              },
              child: Container(
                width: 428,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF2F73FE), Color(0x00D0DFEB)],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 90,
            right: 10,
            left: 10,
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 388,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFEFEFE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                                onChanged: (value) {
                                  filterSearchResults(value);
                                },
                                decoration: InputDecoration(
                                  hintText: 'Search and click ‘Add’',
                                  // Add your hint text here
                                  hintStyle: TextStyle(
                                    color: Color(0xFF7A7A7A),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                  border:
                                      InputBorder.none, // Removes the underline
                                ),
                              ),
                            ),
                            Icon(
                              Icons.search,
                              color: Color(0xFF7A7A7A),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                ],
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
                    SizedBox(width: 118),
                    // Add a SizedBox for some space between icon and text
                    Text(
                      'Qc Stock',
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
// Top container (Second half)
//
          Positioned(
            top: 200,
            left: 30,
            right: 30,
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
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
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
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
                            'Quantity',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFEFEFE),
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
                  Container(
                    height: 415,
                    child: ListView.builder(
                      itemCount: selectedItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Handle the click event
                            // _navigateToDetailsScreen(context, items[index]);
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 8.0, right: 8.0, bottom: 8.0, top: 5),
                            child: Column(
                              children: [
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 97,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          stkItm1(selectedItems[index].title,
                                              Color(0xFF282828), 16),
                                          stkItm1(
                                              selectedItems[index].stknmbr.toString(),
                                              Color(0xFF7A7A7A),
                                              14),
                                          stkItm1(
                                              '(In Stk: ${items[index].stknmbr.toString()})',
                                              Color(0xFF2E7229),
                                              12),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:18.0,right: 10),
                                      child: Container(
                                        width: 102,
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                // Handle the click event for '-'
                                                decreaseQuantity(selectedItems[index]);
                                                print(
                                                    "++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                                                print(selectedItems[index]
                                                    .quantity
                                                    .toString());
                                              },
                                              child: Container(
                                                width: 31,
                                                height: 42,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF3868CE),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Color(0xFF3868CE)),
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                  ),
                                                ),
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
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                child: Container(
                                                  height: 42,
                                                  width: 20,
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              1.0),
                                                      child: Text(
                                                        selectedItems[index]
                                                            .quantity
                                                            .toString(),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF282828),
                                                          fontSize: 16,
                                                          fontFamily: 'Mulish',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Handle the click event for '+'
                                                increaseQuantity(selectedItems[index]);
                                              },
                                              child: Container(
                                                width: 31,
                                                height: 42,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF3868CE),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Color(0xFF3868CE)),
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                  ),
                                                ),
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                horizontalLine()
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        // _navigateToDetailsScreen1(context, items);
                        // filteredItems.length=0;
                        // selectedItems.length=0;
                      });
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          filteredItems.clear();
                          selectedItems.clear();
                          for (var item in items) {
                            item.is_Added = false;
                          }                          // items.clear();
                          // for (var item in items) {
                          //   item.quantity = 1;
                          // }
                        });
                      },
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
                            borderRadius:
                                BorderRadius.circular(999), // Border radius
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
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              )),
          if (filteredItems.length > 0)
            Positioned(
              top: 165,
              left: 20,
              right: 20,
              child:
               Container(
                  width: 388,
                  height: 176,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x59293072),
                        blurRadius: 22,
                        offset: Offset(2, 7),
                        spreadRadius: -2,
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    itemCount: filteredItems.length,
                    // The number of items in your list
                    itemBuilder: (BuildContext context, int index) {
                      // This is a callback function that builds each item in the list
                      // You can use the 'index' to access the data for the current item
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      // Container(
                                      //   width: 43,
                                      //   height: 43,
                                      //   decoration: ShapeDecoration(
                                      //     image: DecorationImage(
                                      //       image: AssetImage(filteredItems[index]
                                      //           .image),
                                      //       fit: BoxFit.fill,
                                      //     ),
                                      //     shape: OvalBorder(),
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              filteredItems[index].title,
                                              style: TextStyle(
                                                color: Color(0xFF282828),
                                                fontSize: 14,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              filteredItems[index].stknmbr,
                                              style: TextStyle(
                                                color: Color(0xFF7A7A7A),
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            stkItm1(
                                                '(In Stk: ${filteredItems[index].stknmbr.toString()})',
                                                Color(0xFF2E7229),
                                                12),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            // Text(
                                            //   "$items[index].amount",
                                            //   textAlign: TextAlign.right,
                                            //   style: TextStyle(
                                            //     color: Color(0xFFEE6161),
                                            //     fontSize: 14,
                                            //     fontFamily: 'Mulish',
                                            //     fontWeight: FontWeight.w600,
                                            //     height: 0,
                                            //   ),
                                            // ),
                                            // Padding(
                                            //   padding:
                                            //   EdgeInsets.only(left: 35.0),
                                            //   child: Text(
                                            //     items[index].title,
                                            //     style: TextStyle(
                                            //       color: Color(0xFF7A7A7A),
                                            //       fontSize: 12,
                                            //       fontFamily: 'Mulish',
                                            //       fontWeight: FontWeight.w500,
                                            //       height: 0,
                                            //     ),
                                            //   ),
                                            // )
                                          ],
                                        ),
                                        if (filteredItems[index].is_Added ==
                                            false)
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                items[index].is_Added = true;
                                                filterIsAddedResults();

                                              });
                                            },
                                            child: Container(
                                              width: 66,
                                              height: 34,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF3868CE),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xFF3868CE)),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Add',
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
                                          )
                                        else
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                items[index].is_Added = false;
                                                filterIsAddedResults();
                                              });
                                            },
                                            child: Container(
                                              width: 66,
                                              height: 34,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF7A7A7A),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 1,
                                                      color: Color(0xFF7A7A7A)),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Added',
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
                                          )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // customDivider()
                             Divider()
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

            )
          else
            // Widget to show when filteredItems.length is not greater than 0
            Container(
                // Replace with your widget configuration
                ),

          // Positioned.fill(
          //   child: GestureDetector(
          //     onTap: () {
          //       // Update a state variable to hide the container
          //       setState(() {
          //         filteredItems==0;
          //         // Set the state variable to hide the container
          //         // You may need to add a state variable like `bool isContainerVisible = true;`
          //         // and set it to false here.
          //       });
          //     },
          //     child: Container(
          //       color: Colors.transparent,
          //     ),
          //   ),
          // ),


// Overlay container
        ],
      ),
    );
  }
}


void _navigateToDetailsScreen1(BuildContext context, List<ProductList> item) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => CashPayment(items: item),
  //   ),
  // );
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
          width: 0.78,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color(0xFFC4C4C4),
        ),
      ),
    ),
  );
}
