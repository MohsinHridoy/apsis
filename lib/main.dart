import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/registrationprovider.dart';

import 'package:untitled/screens/addnewcustomer/new_customer.dart';
import 'package:untitled/screens/addnewstock/add_new_stock.dart';
import 'package:untitled/screens/alert/alert.dart';
import 'package:untitled/screens/calculator/calculator.dart';
import 'package:untitled/screens/calculator/calculator2.dart';
import 'package:untitled/screens/cashpayment/cash_payment.dart';
import 'package:untitled/screens/creaditpayment/creadit_payment.dart';
import 'package:untitled/screens/customerlist/customerList2.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history001.dart';
import 'package:untitled/screens/dashboard/dashboard.dart';
import 'package:untitled/screens/login/login.dart';
import 'package:untitled/screens/myStock/my_stock.dart';
import 'package:untitled/screens/myStock/my_stock001.dart';
import 'package:untitled/screens/new_sale/new_sale.dart';
import 'package:untitled/screens/new_sale/new_sale1.dart';
import 'package:untitled/screens/otp/otp.dart';
import 'package:untitled/screens/payment_details/payment_details.dart';
import 'package:untitled/screens/qcstock/qc_stock.dart';
import 'package:untitled/screens/qcstock/qc_stock2.dart';
import 'package:untitled/screens/receive_cash/receive_cash.dart';
import 'package:untitled/screens/register/register.dart';
import 'package:untitled/screens/sale_history/SaleHistory.dart';
import 'package:untitled/screens/stock_details/stock_details.dart';
import 'package:untitled/screens/test.dart';
import 'package:untitled/screens/viewstock/view_stock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RegistrationProvider>(
          create: (_) => RegistrationProvider(),
          child: Register(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NewSale(),
      ),
    );
  }
}

class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Square Bottom Navigation Bar'),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              color: Colors.red,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomNavigationBar(
                currentIndex: currentIndex,
                onTap: onTabTapped,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.white,
              // height: 80, // Specify the desired height
              // color: Colors.blue, // Color for the bottom navigation bar
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              width: double.infinity, // Takes up the entire screen width
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 60,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildNavItem(0, Icons.home, 'Home'),
                          _buildNavItem(1, Icons.person, 'Profile'),
                          _buildNavItem(2, Icons.settings, 'Settings'),
                          _buildNavItem(3, Icons.access_alarm, 'ssss'),
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
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        widget.onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Container(
              width: 60,
              height: index == widget.currentIndex ? 60 : 40,
              decoration: BoxDecoration(
                color: index == widget.currentIndex
                    ? Colors.blue
                    : Colors.transparent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Icon(
                icon,
                color:
                    index == widget.currentIndex ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
