import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/addnewstock/add_new_stock.dart';
import 'package:untitled/screens/alert/alert.dart';
import 'package:untitled/screens/calculator/calculator.dart';
import 'package:untitled/screens/cashpayment/cash_payment.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/screens/myStock/my_stock.dart';
import 'package:untitled/screens/new_sale/new_sale.dart';
import 'package:untitled/screens/qcstock/qc_stock.dart';
import 'package:untitled/screens/sale_history/SaleHistory.dart';
import 'package:untitled/widgets/progressbar.dart';
import 'package:untitled/widgets/widgets.dart';

import '../addnewcustomer/new_customer.dart';
import '../creaditpayment/creadit_payment.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> destinationWidgets = [
    NewSale(),
    AddNewStock(),
    MyStock(),
    CreditPayment(),
    CashPayment(),
    SaleHistory(),
    Alert(),
    Calculator(),
    AddNewCustomer(),
    CustomerList(),
    CustomerSaleHistory(),
    QcStock(),
  ];

  final List<String> widgetNames = [
    "নতুন বিক্রি",
    "নতুন স্টক \nযুক্ত করুন",
    "আমার স্টক",
    "বাকী খাতা",
    "সকল বিক্রি",
    "QC স্টক",
    "কাস্টমার",
    "কাস্টমার\nএলার্ট",
    "ক্যালকুলেটর",
    "রিপোর্ট",
    "টিউটোরিয়াল",
    "কাস্টমার কেয়ার'",
  ];

  final List<String> widgetIcons = [
    "assets/icons/trolly.png",
    "assets/icons/syringe.png",
    "assets/icons/capsules.png",
    "assets/icons/books.png",
    "assets/icons/todo.png",
    "assets/icons/contact.png",
    "assets/icons/contact_1.png",
    "assets/icons/mail.png",
    "assets/icons/calculator.png",
    "assets/icons/report.png",
    "assets/icons/tutorial.png",
    "assets/icons/customer_service.png",
  ];

  int? selectedContainerIndex;
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF2F73FE),
    ));

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF2F73FE), Color(0x00D0DFEB)],
          ),
        ),
        child: Stack(
          children: [
            // ... (Your existing stack widgets)

            // Extracted the following into separate methods for better readability
            buildHeader(),
            buildDashboardContainer(),
            buildGridView(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }

  // Methods to build different parts of the UI

  Widget buildHeader() {
    return Positioned(
      left: 10,
      top: 32,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ellipse.png"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ABC Enterprise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardContainer() {
    return Positioned(
      left: 20,
      top: 133,
      right: 20,
      child: Container(
        width: 388,
        height: 237,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            // ... (Your existing widgets)
          ],
        ),
      ),
    );
  }

  Widget buildGridView() {
    return Positioned(
      left: 20,
      top: 393,
      right: 20,
      child: Container(
        width: 396,
        height: 361,
        decoration: ShapeDecoration(
          color: Color(0xFFFEFEFE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x66E2E2E2),
              blurRadius: 10,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return false;
            },
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 1, // Spacing between columns
                mainAxisSpacing: 2, // Spacing between rows
                childAspectRatio: 0.8,
                crossAxisCount: 4, // Reduce the number of columns
              ),
              itemCount: destinationWidgets.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => destinationWidgets[
                        index], // Navigate to Page 2
                      ),
                    );
                  },
                  child: Container(
                    // height: 20, // Reduce the height of the item
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: 66,
                            height: 65,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Color(0xFFE9F0FF),
                                  Colors.white,
                                  Color(0xFFE9F0FF)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0x192F73FE)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  widgetIcons[index],
                                  // Adjust the height as needed
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.2),
                          child: Text(
                            widgetNames[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF282828),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
