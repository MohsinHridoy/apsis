import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:untitled/screens/addnewstock/add_new_stock.dart';
import 'package:untitled/screens/alert/alert.dart';
import 'package:untitled/screens/calculator/calculator.dart';
import 'package:untitled/screens/calculator/calculator2.dart';
import 'package:untitled/screens/cashpayment/cash_payment.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/screens/myStock/my_stock.dart';
import 'package:untitled/screens/new_sale/new_sale.dart';
import 'package:untitled/screens/new_sale/new_sale2.dart';
import 'package:untitled/screens/qcstock/qc_stock.dart';
import 'package:untitled/screens/qcstock/qc_stock2.dart';
import 'package:untitled/screens/sale_history/SaleHistory.dart';
import 'package:untitled/widgets/progressbar.dart';
import 'package:untitled/widgets/widgets.dart';

import '../addnewcustomer/new_customer.dart';
import '../creaditpayment/creadit_payment.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> destinationWidgets = [
    NewSale2(),
    AddNewStock(),
    MyStock(),
    CreditPayment(),
    CreditPayment(),
    QcStk(),
    // AddNewCustomer(),
    CustomerList(),
    Alert(),
    CalculatorScreen(),
    CustomerList(),
    CustomerSaleHistory(),
    QcStock(),
  ];
  List<String> widgetNames = [
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
    "কাস্টমার কেয়ার",
  ];

  List<String> widgetIcons = [
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

  String saleAmount = "14587";
  String profitAmount = "587";
  String dueAmount = "4516";
  double progressPercentage = 0.7;
  String progressIndicatorPercentage = "72%";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // Set the desired status bar color
    ));
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

  Widget buildHeader() {
    return Positioned(
      left: 15,
      top: 45,
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
            SizedBox(width: 5,),
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
              Padding(
                padding: const EdgeInsets.only(left: 30.0,top:10,right: 30),
                child: Row(
                  children: [
                    dashboardContainer(1, 60, 'Today', Color(0xFF40C07B),
                        Color(0xFFE0FCCD), Color(0xFF40C07B)),
                    dashboardContainer(2, 84, 'Yesterday', Color(0xFF394C73),
                        Color(0xFFC2D1F1), Color(0xFF394C73)),
                    dashboardContainer(3, 94, 'Last month', Color(0xFF616161),
                        Color(0xFFD6D6D6), Color(0xFFA19292)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left:5.0),
                      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          dashboardText("Today’s sale till now"),
                          Padding(
                            padding: const EdgeInsets.only(right: 60.0, top: 6),
                            child: dashboardText2("$saleAmount", Color(0xFF3A6CCF)),
                          ),
                          dashboardText("Today’s profit till now"),
                          Padding(
                            padding: const EdgeInsets.only(right: 60.0, top: 6),
                            child: dashboardText2("$profitAmount", Color(0xFF40C07B)),
                          ),
                          dashboardText("Today’s due till now"),
                          Padding(
                            padding: const EdgeInsets.only(right: 60.0, top: 6),
                            child: dashboardText2("$dueAmount", Color(0xFFE76767)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                child: CustomPaint(
                                  size: Size(100, 100),
                                  painter: MyCircularProgressPainter(
                                    backgroundColor: Color(0xFFE6E6E6),
                                    progress: progressPercentage,
                                    gradient: LinearGradient(
                                      begin: Alignment(0.06, -1.00),
                                      end: Alignment(-0.06, 1),
                                      colors: [
                                        Color(0xFF3563C2),
                                        Color(0xFFA4D9D0)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 15),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        progressIndicatorPercentage,
                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 20,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        'Sale target \nachieved',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF7A7A7A),
                                          fontSize: 12,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ],
                ),
                    )),
              ),
            ],
          )),
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
                        builder: (context) =>
                            destinationWidgets[index], // Navigate to Page 2
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

  Widget dashboardContainer(int index, double width, String text,
      Color txtcolor, Color containeColor, Color selectedColor) {
    bool isSelected = selectedContainerIndex == index!!;
    Color borderColor = isSelected ? selectedColor : Colors.transparent;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainerIndex = index;
          updateValuesForPeriod(text);
          // onTap();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          height: 22,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: ShapeDecoration(
            color: containeColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: borderColor),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Text(
            "$text",
            style: TextStyle(
              color: txtcolor,
              fontSize: 12,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }

  void updateValuesForPeriod(String period) {
    // Update values based on the selected period
    if (period == 'Today') {
      saleAmount = "14587";
      profitAmount = "587";
      dueAmount = "4516";
      progressPercentage=0.7;
      progressIndicatorPercentage="72%";
    } else if (period == 'Yesterday') {
      saleAmount = "3587";
      profitAmount = "7827";
      dueAmount = "2222";
      progressPercentage=0.8;
      progressIndicatorPercentage="82%";

    } else if (period == 'Last month') {
      saleAmount = "222222";
      profitAmount = "487";
      dueAmount = "2116";
      progressPercentage=0.3;
      progressIndicatorPercentage="30%";

    }

    // Call setState to rebuild the UI with the new values
    setState(() {});
  }
}

Widget dashboardText(String text) {
  return Text(
    '$text',
    style: TextStyle(
      color: Color(0xFF282828),
      fontSize: 14,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget dashboardText2(String price, Color color) {
  int priceValue = int.tryParse(price) ?? 0;

  // Format the price with commas using NumberFormat
  final formattedPrice = NumberFormat('#,###').format(priceValue);
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
      width: 100,
      child: Text(
        '৳ $formattedPrice',
        style: TextStyle(
          color: color,
          // color: Color(0xFF3A6CCF),
          fontSize: 16,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    ),
  );
}
class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, 'assets/icons/home.png'),
          _buildNavItem(1, 'assets/icons/home.png'),
          _buildNavItem(2, 'assets/icons/home.png'),
          _buildNavItem(3, 'assets/icons/home.png'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String imgPath) {
    return GestureDetector(
      onTap: () => onItemSelected(index),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: ShapeDecoration(
                color: index == selectedIndex
                    ? Color(0xFFE3FDFF)
                    : Colors.red,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFDFF9FB)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 15,
                  height: 15,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      // Replace with your asset image path
                      fit: BoxFit
                          .fitHeight, // Adjust the fit based on your requirement
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
