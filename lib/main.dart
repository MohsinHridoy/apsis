import 'package:flutter/material.dart';
import 'package:untitled/screens/addnewcustomer/new_customer.dart';
import 'package:untitled/screens/addnewstock/add_new_stock.dart';
import 'package:untitled/screens/alert/alert.dart';
import 'package:untitled/screens/calculator/calculator.dart';
import 'package:untitled/screens/cashpayment/cash_payment.dart';
import 'package:untitled/screens/creaditpayment/creadit_payment.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/screens/dashboard/dashboard.dart';
import 'package:untitled/screens/login/login.dart';
import 'package:untitled/screens/myStock/my_stock.dart';
import 'package:untitled/screens/myStock/my_stock001.dart';
import 'package:untitled/screens/new_sale/new_sale.dart';
import 'package:untitled/screens/otp/otp.dart';
import 'package:untitled/screens/payment_details/payment_details.dart';
import 'package:untitled/screens/receive_cash/receive_cash.dart';
import 'package:untitled/screens/register/register.dart';
import 'package:untitled/screens/sale_history/SaleHistory.dart';
import 'package:untitled/screens/stock_details/stock_details.dart';
import 'package:untitled/screens/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyStock(),
    );
  }
}


