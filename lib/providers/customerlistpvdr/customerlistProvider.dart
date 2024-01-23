


import 'package:flutter/material.dart';
import 'package:untitled/model/customerlist/customerlist.dart';

class CustomerListProvider with ChangeNotifier{



  List<CustomerListDetails> _items = [
    CustomerListDetails(
        name: 'Abdul Miah',
        role: 'Wholesaler',
        amount: 16547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man2.png'),
    CustomerListDetails(
        name: 'Mr. Rony',
        role: 'Wholesaler',
        amount: 13333.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man3.png'),
    CustomerListDetails(
        name: 'Mr . Jony',
        role: 'Wholesaler',
        amount: 21547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man4.png'),
    CustomerListDetails(
        name: 'Karim Miah',
        role: 'Wholesaler',
        amount: 34547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/icons/man2.png'),
    CustomerListDetails(
        name: 'Rahim Miah',
        role: 'Wholesaler',
        amount: 16547.00,
        creditStatus: 'Credit',
        profileImage: 'assets/images/ellipse.png'),
    // Add more items as needed
  ];

  List<CustomerListDetails> get items => _items;


}