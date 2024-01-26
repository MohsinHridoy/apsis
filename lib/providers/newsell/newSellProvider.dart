import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/model/peoductList/productlist.dart';
import 'package:async/async.dart';

class NewSellProvider extends ChangeNotifier {

  String searchQuery = ""; // Add this line to declare the searchQuery variable

  List<ProductList> _selectedItems = [];
  // final _updateDebouncer = Debouncer(milliseconds: 300); // Adjust the delay as needed
  TextEditingController? searchController;
  List<TextEditingController> controllers = [];
  void initControllers() {
    searchController = TextEditingController();
    controllers = List.generate(
      addedItems.length,
          (index) => TextEditingController(
        text: addedItems[index].quantity.toString(),
      ),
    );
  }

  List<ProductList> get selectedItems => _selectedItems;

  List<ProductList> _items = [
    ProductList(
        title: 'Cola',
        productId: '123456',
        quantity: 5,
        stknmbr: '150 ml',
        unitprice: 25,
        image: 'assets/images/product1.png',
        productAmount: 125.00,
        is_Added: false),
    ProductList(
        title: 'Sprite ',
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
        quantity: 7,
        stknmbr: '250 ml',
        unitprice: 50,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Potato Cakes',
        productId: '789012',
        quantity: 20,
        stknmbr: '250 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Fried Chips',
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
        title: 'Banana Chips',
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
        title: 'Mango Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: '250 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Rice Chips',
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
    ProductList(
        title: 'Frech Chips',
        productId: '789012',
        quantity: 10,
        stknmbr: '200 ml',
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
  bool searchItemVisible = true;

  List<ProductList> get items => _items;
  List<ProductList> _searchItems = [
    ProductList(
        title: 'Cola',
        productId: '123456',
        quantity: 5,
        stknmbr: '150 ml',
        unitprice: 25,
        image: 'assets/images/product1.png',
        productAmount: 125.00,
        is_Added: false),
    ProductList(
        title: 'Sprite ',
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
        title: 'Potato Cakes',
        productId: '789012',
        quantity: 10,
        stknmbr: '250 ml',
        unitprice: 15,
        image: 'assets/images/product2.png',
        productAmount: 150.00,
        is_Added: false),
    ProductList(
        title: 'Fried Chips',
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



  Future selectAndStoreItem(ProductList selectedItem) async {
    // Get the existing list from shared preferences
    List<ProductList>? storedItems = await getStoredItems();

    // If there's no existing list, create a new one
    storedItems ??= [];

    // Add the selected item to the list
    storedItems.add(selectedItem);

    // Convert the list of ProductList objects to a list of strings
    List<String> encodedItems =
    storedItems.map((item) => json.encode(item.toJson())).toList();

    // Store the updated list in shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('selectedItems', encodedItems);

    print(storedItems.length);

    // Do any other necessary operations with the selected item
    // ...

    notifyListeners();
  }

// Retrieve the list of selected items from shared preferences
  Future<List<ProductList>> getStoredItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Get the stored items as a list of strings
    List<String>? encodedItems = prefs.getStringList('selectedItems');

    // If there are no stored items, return an empty list
    if (encodedItems == null) {
      return [];
    }

    // Convert the list of strings back to a list of ProductList objects
    List<ProductList> selectedItems = encodedItems
        .map((encodedItem) =>
        ProductList.fromJson(json.decode(encodedItem)))
        .toList();

    return selectedItems;
  }



  void removeStoredItem(int index) async {
    List<ProductList>? storedItems = await getStoredItems();

    if (storedItems != null && index >= 0 && index < storedItems.length) {
      storedItems.removeAt(index);

      List<String> encodedItems =
      storedItems.map((item) => json.encode(item.toJson())).toList();

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setStringList('selectedItems', encodedItems);
      print(storedItems.length);


      notifyListeners();
    }
  }

  void removeAllStoredItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('selectedItems');

    notifyListeners();
  }






  List<ProductList> get searchItems => _searchItems;
  List<ProductList> _filteredItems = [];

  List<ProductList> get filteredItems => _filteredItems;

  List<ProductList> _addedItemsList = [];

  List<ProductList> get addedItemsList => _addedItemsList;

  void updateAddedItemsList() {
    _addedItemsList = _filteredItems.where((item) => item.is_Added).toList();
    notifyListeners();
  }
  void searchItemVisibility() {
    if (_filteredItems.length > 0)
      searchItemVisible = true;
    else
      searchItemVisible = false;
    notifyListeners();
  }

  void toggleSearchItemVisibility() {
    searchItemVisible = !searchItemVisible;
    notifyListeners();
  }
  void filterSearchResults(String query) {
    if (query.isEmpty) {
      _filteredItems = []; // Set it to an empty list when the query is empty
    } else {
      searchQuery = query;

      _filteredItems = items
          .where(
              (item) => item.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    searchItemVisibility(); // Update visibility status

    // Notify listeners to rebuild widgets that depend on filteredItems
    notifyListeners();
  }

  List<ProductList> get addedItems {
    // Filter items where is_Added is true
    return _filteredItems.where((item) => item.is_Added).toList();
  }


  void decreaseQuantity(int index) {
    if (addedItems[index].quantity > 1) {
      addedItems[index].quantity--;
      notifyListeners();
    }
  }

  void increaseQuantity(int index) {
    addedItems[index].quantity++;
    print(addedItems[index].quantity);
    notifyListeners();
  }
  void updateIsAdded(int index) {
    _filteredItems[index].is_Added = !_filteredItems[index].is_Added;
    notifyListeners();
  }

  void updateSelectedItems(List<ProductList> newSelectedItems) {
    // Update the internal state with the new selected items
    _selectedItems = newSelectedItems;

    print(_selectedItems.length);
    // Trigger a rebuild
    notifyListeners();
  }

  void updateTotalPrice(int index) {
    double totalPrice =
        (addedItems[index].quantity * addedItems[index].unitprice).toDouble();
    addedItems[index].productAmount = totalPrice;
    notifyListeners();
  }

  void updateQuantity(int index, int newQuantity) {
    if (index >= 0 && index < _filteredItems.length) {
      _filteredItems[index].quantity = newQuantity;
      notifyListeners();
    }
  }

// Add other methods as needed, for example, to add/remove items or update product details.
}

