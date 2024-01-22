import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/model/peoductList/productlist.dart';


class MySharedPreferences {
  // Save a list of custom objects to SharedPreferences
  Future<void> saveListToPrefs(List<ProductList> myData) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'myDataKey';

    // Convert the list of custom objects to a list of JSON strings
    final List<String> jsonDataList = myData.map((product) => jsonEncode(product.toJson())).toList();

    // Save the list of JSON strings to SharedPreferences
    await prefs.setStringList(key, jsonDataList);
  }

// Retrieve a list of custom objects from SharedPreferences
  Future<List<ProductList>> getListFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'myDataKey';

    // Retrieve the list of JSON strings from SharedPreferences
    final List<String>? jsonDataList = prefs.getStringList(key);

    if (jsonDataList == null) {
      // Return an empty list if no data is found
      return [];
    }

    // Convert the list of JSON strings back to a list of custom objects
    final List<ProductList> productList = jsonDataList.map((jsonData) {
      final Map<String, dynamic> jsonMap = jsonDecode(jsonData);
      return ProductList.fromJson(jsonMap);
    }).toList();

    return productList;
  }
}
