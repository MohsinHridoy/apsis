import 'package:flutter/material.dart';
import 'package:untitled/model/customerlist/customerlist.dart';
import 'package:untitled/screens/addnewcustomer/new_customer.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history001.dart';
import 'package:untitled/widgets/colors.dart';
import 'package:untitled/widgets/widgets.dart';
import 'package:untitled/widgets/widgets1.dart';

import '../../widgets/highlighttext.dart';

class CustomerList extends StatefulWidget {
  final CustomerListDetails? customerDetails;

  const CustomerList({super.key, this.customerDetails});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  List<CustomerListDetails> items = [
    CustomerListDetails(
        name: 'Abdul Miah',
        role: 'Wholesaler',
        amount: 16547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man2.png',
        phoneNumber: "01782595673",
        address: "dhaka,Bangladesh"),
    CustomerListDetails(
        name: 'Mr. Rony',
        role: 'Wholesaler',
        amount: 13333.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man3.png',
        phoneNumber: "01782595673",
        address: "dhaka,Bangladesh"),

    CustomerListDetails(
        name: 'Mr . Jony',
        role: 'Wholesaler',
        amount: 21547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man4.png',
        phoneNumber: "01782595673",
        address: "dhaka,Bangladesh"),
    CustomerListDetails(
        name: 'Karim Miah',
        role: 'Wholesaler',
        amount: 34547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man2.png',
        phoneNumber: "01782595673",
        address: "dhaka,Bangladesh"),
    CustomerListDetails(
        name: 'Rahim Miah',
        role: 'Wholesaler',
        amount: 16547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/images/ellipse.png',
        phoneNumber: "01782595673",
        address: "dhaka,Bangladesh"),
    // Add more items as needed
  ];

  List<CustomerListDetails> filteredItems = [];
  String searchQuery = ""; // Add this line to declare the searchQuery variable

  bool searchItemVisible = true;
  late FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    filteredItems.clear();
    if (widget.customerDetails != null) {
      items.add(widget.customerDetails!);
    }
    if (widget.customerDetails != null) {
      print(widget.customerDetails!.name);
    }
    _searchFocusNode = FocusNode();

    // filteredItems = items;
  }

  @override
  void dispose() {
    _searchFocusNode.dispose(); // Dispose the focus node to avoid memory leaks

    // _controllers1.dispose();

    super.dispose();
  }

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredItems = 0 as List<CustomerListDetails>;
      });
    } else {
      searchQuery = query;

      List<CustomerListDetails> searchResults = items
          .where(
              (item) => item.name.toLowerCase().contains(query.toLowerCase()))
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

      setState(() {
        searchQuery = query;
        filteredItems = items
            .where(
                (item) => item.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // appBar: AppBar(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: myGradient,
        ),
        child: Stack(
          children: [
            // Bottom container (First half)

            Positioned(
              top: 90,
              right: 12,
              left: 12,
              child: searchBarItem(),
            ),

            Positioned(
              // left: 124,
              top: 42,
              left: 6,
              child: appBar(),
            ),

            // Top container (Second half)
            Positioned(
              top: MediaQuery.of(context).size.height / 3.3,
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  filteredItems.clear();
                  searchItemVisible = false;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerSaleHistory(),
                    ),
                  );
                },
                child: Visibility(
                  visible: true,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: Container(
                        width: 396,
                        height: 647,
                        decoration: BoxDecoration(color: Colors.white),
                        child: ListView.builder(
                          itemCount: items.length,
                          // The number of items in your list
                          itemBuilder: (BuildContext context, int index) {
                            // This is a callback function that builds each item in the list
                            // You can use the 'index' to access the data for the current item
                            return GestureDetector(
                              child: Container(
                                // height: 80,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 43,
                                                height: 43,
                                                decoration: ShapeDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        items[index]
                                                            .profileImage),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    // Text(
                                                    //   items[index].name,
                                                    //   style: TextStyle(
                                                    //     color: Color(0xFF282828),
                                                    //     fontSize: 14,
                                                    //     fontFamily: 'Mulish',
                                                    //     fontWeight: FontWeight.w500,
                                                    //     height: 0,
                                                    //   ),
                                                    // ),
                                                    list_title_text1(
                                                        items[index].name),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 2.0),
                                                      // child: Text(
                                                      //   items[index].role,
                                                      //   style: TextStyle(
                                                      //     color: Color(0xFF7A7A7A),
                                                      //     fontSize: 12,
                                                      //     fontFamily: 'Mulish',
                                                      //     fontWeight: FontWeight.w500,
                                                      //     height: 0,
                                                      //   ),
                                                      // ),
                                                      child: list_title_text2(
                                                          items[index].role),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 30.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    // Text(
                                                    //   items[index].amount.toString(),
                                                    //   textAlign: TextAlign.right,
                                                    //   style: TextStyle(
                                                    //     color: Color(0xFFEE6161),
                                                    //     fontSize: 14,
                                                    //     fontFamily: 'Mulish',
                                                    //     fontWeight: FontWeight.w600,
                                                    //     height: 0,
                                                    //   ),
                                                    // ),
                                                    list_title_text3(
                                                        items[index]
                                                            .amount
                                                            .toString()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 2.0),
                                                      // child: Text(
                                                      //   items[index].creditStatus,
                                                      //   style: TextStyle(
                                                      //     color: Color(0xFF7A7A7A),
                                                      //     fontSize: 12,
                                                      //     fontFamily: 'Mulish',
                                                      //     fontWeight:
                                                      //     FontWeight.w500,
                                                      //     height: 0,
                                                      //   ),
                                                      // ),
                                                      child: list_title_text2(
                                                          items[index]
                                                              .creditStatus),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 25.0),
                                                child: forwardIcon(),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 1.0, right: 1),
                                        child: customDivider(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (filteredItems.length > 0)
              Positioned(
                top: 170,
                left: 16,
                right: 16,
                child: Visibility(
                  visible: searchItemVisible,
                  child: Container(
                    width: 388,
                    height: filteredItems.length * 110,
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
                        CustomerListDetails currentItem =
                            filteredItems.length > 0
                                ? filteredItems[index]
                                : items[index];

                        // Check if the item's name contains the search query
                        // Check if the item's name contains the search query
                        String name = currentItem.name;
                        String role = currentItem.role;

                        List<TextSpan> textSpans =
                            highlightText(name, searchQuery);

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomerSaleHistory(),
                              ),
                            );
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 43,
                                              height: 43,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      filteredItems[index]
                                                          .profileImage),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Text(
                                                  //   filteredItems[index].name,
                                                  //   style: TextStyle(
                                                  //     color: isMatch ? Colors.green : Color(0xFF282828),
                                                  //     fontSize: 14,
                                                  //     fontFamily: 'Mulish',
                                                  //     fontWeight: FontWeight.w500,
                                                  //     height: 0,
                                                  //   ),
                                                  // ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Mulish',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xFF282828),
                                                      ),
                                                      children: textSpans,
                                                    ),
                                                  ),

                                                  // Text(
                                                  //   filteredItems[index].role,
                                                  //   style: TextStyle(
                                                  //     color: Color(0xFF7A7A7A),
                                                  //     fontSize: 12,
                                                  //     fontFamily: 'Mulish',
                                                  //     fontWeight: FontWeight.w500,
                                                  //     height: 0,
                                                  //   ),
                                                  // )
                                                  list_title_text2(
                                                      filteredItems[index]
                                                          .role),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  // Text(
                                                  //   filteredItems[index]
                                                  //       .amount
                                                  //       .toString(),
                                                  //   textAlign: TextAlign.right,
                                                  //   style: TextStyle(
                                                  //     color: Color(0xFFEE6161),
                                                  //     fontSize: 14,
                                                  //     fontFamily: 'Mulish',
                                                  //     fontWeight:
                                                  //         FontWeight.w600,
                                                  //     height: 0,
                                                  //   ),
                                                  // ),
                                                  list_title_text3(filteredItems[index]
                                                      .amount
                                                      .toString()),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 35.0),
                                                    // child: Text(
                                                    //   items[index].creditStatus,
                                                    //   style: TextStyle(
                                                    //     color:
                                                    //         Color(0xFF7A7A7A),
                                                    //     fontSize: 12,
                                                    //     fontFamily: 'Mulish',
                                                    //     fontWeight:
                                                    //         FontWeight.w500,
                                                    //     height: 0,
                                                    //   ),
                                                    // ),
                                                    child:  list_title_text2(items[index].creditStatus)
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              // Icon(
                                              //   Icons
                                              //       .arrow_forward_ios_outlined,
                                              //   size: 15,
                                              // )
                                              forwardIcon()

                                              // Image.asset("assets/icons/left_arrow2.png",width: 20,height: 20,)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    customDivider()
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            else
              // Widget to show when filteredItems.length is not greater than 0
              Container(
                  // Replace with your widget configuration
                  ),

            // Overlay container
            Positioned(
              bottom: 40,
              right: 15,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => AddNewCustomer(),
                  //   ),
                  // );

                  navigateToNextPage(context,AddNewCustomer());
                },
                child: addCustomerButton(),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget addCustomerButton() {
    return Container(
      width: 221,
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
          '+ Add new customer',
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
    );
  }

  Widget searchBarItem() {
    return Container(
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
                padding: const EdgeInsets.only(
                    left: 12.0, top: 8.0, right: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (!hasFocus) {
                            // Keyboard is dismissed
                            searchItemVisible = false;
                            setState(() {});
                          }
                        },
                        child: TextFormField(
                          focusNode: _searchFocusNode,
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
                            hintText: 'Search customer',
                            // Add your hint text here
                            hintStyle: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                            border: InputBorder.none, // Removes the underline
                          ),
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
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
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
                      width: MediaQuery.of(context).size.width * 0.17,
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

  Widget appBar() {
    return Container(
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
              child: backArrow(),
            ),
            SizedBox(width: 98),
            // Add a SizedBox for some space between icon and text

            appBarTitle('Customer List')
          ],
        ),
      ),
    );
  }
}
