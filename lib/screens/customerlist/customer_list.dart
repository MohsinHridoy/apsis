import 'package:flutter/material.dart';
import 'package:untitled/screens/addnewcustomer/new_customer.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({super.key});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,

        centerTitle: true,// No elevation (no shadow)
        backgroundColor: Color(0xFF3A67C4), // Background color
        // backgroundColor: Color(0xFF3563C2),
        // Background color
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(gradient: gradient),
        // ),
        title:  Text(
          'Customer List',
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
      body: Stack(
        children: [
// Bottom container (First half)
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                width: 428,
                height: 354,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.06, -1.00),
                    end: Alignment(-0.06, 1),
                    colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        width: 388,
                        height: 54,
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
                              Text(
                                'Search customer',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                              Icon(Icons.star_border)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),

                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        width: 388,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
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
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Icon(
                                  Icons.abc
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
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
                              SizedBox(width: 80,),
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
              )
          ),
// Top container (Second half)
          Positioned(
            top: MediaQuery.of(context).size.height / 3.7,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: ShapeDecoration(
                color: Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(15),
                ),

              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                child: Container(
                  width: 396,
                  height: 647,
                  decoration: BoxDecoration(color: Colors.white),
                  child: ListView.builder(
                    itemCount: 17, // The number of items in your list
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
                                      Container(
                                        width: 43,
                                        height: 43,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/43x43"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Abdul Miah',
                                              style: TextStyle(
                                                color: Color(0xFF282828),
                                                fontSize: 14,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              'Wholesaler',
                                              style: TextStyle(
                                                color: Color(0xFF7A7A7A),
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            )
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
                                            Text(
                                              '৳ 16,547.00',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: Color(0xFFEE6161),
                                                fontSize: 14,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:35.0),
                                              child: Text(
                                                'Credit',
                                                style: TextStyle(
                                                  color: Color(0xFF7A7A7A),
                                                  fontSize: 12,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(width: 30,),
                                        Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),

// Overlay container
          Positioned(
            bottom: 40,
            right: 10,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewCustomer(),
                  ),
                );

              },
              child: Container(
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
              ),
            ),
          )

        ],
      ),
    );
  }
}
