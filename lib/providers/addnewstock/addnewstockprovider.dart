//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:untitled/model/mystock/mystock.dart';
//
//
//
//
//
// class NewSellProvider extends ChangeNotifier {
//   // List<ProductList> storedItems=[];
//
//   String searchQuery = ""; // Add this line to declare the searchQuery variable
//   List<MyStockData> storedItems = [];
//
//   List<MyStockData> _selectedItems = [];
//   // final _updateDebouncer = Debouncer(milliseconds: 300); // Adjust the delay as needed
//   TextEditingController? searchController;
//   List<TextEditingController> controllers = [];
//   // void initControllers() {
//   //   searchController = TextEditingController();
//   //   controllers = List.generate(
//   //     addedItems.length,
//   //         (index) => TextEditingController(
//   //       text: addedItems[index].quantity.toString(),
//   //     ),
//   //   );
//   // }
//
//   List<MyStockData> get selectedItems => _selectedItems;
//
//   List<MyStockData> stockList = [
//     MyStockData(
//       stkId: '001',
//       stkTitle: 'Stock 1',
//       stkQuantity: '100',
//       stkCompanyName: 'Company A',
//       quantity: 10,
//       stknmbr: 'ABC123',
//       unitprice: 50,
//       image: 'image1.jpg', is_Added: false,
//     ),
//     MyStockData(
//       stkId: '002',
//       stkTitle: 'Stock 2',
//       stkQuantity: '200',
//       stkCompanyName: 'Company B',
//       quantity: 20,
//       stknmbr: 'DEF456',
//       unitprice: 75,
//       image: 'image2.jpg', is_Added: false,
//     ),
//     // Add more items as needed
//   ];
//   bool searchItemVisible = true;
//
//   List<MyStockData> get items => _items;
//
//
//
//   Future selectAndStoreItem(MyStockData selectedItem) async {
//     // Get the existing list from shared preferences
//     storedItems = await getStoredItems();
//
//     // If there's no existing list, create a new one
//     storedItems ??= [];
//
//     // Add the selected item to the list
//     storedItems.add(selectedItem);
//
//     // Convert the list of ProductList objects to a list of strings
//     List<String> encodedItems =
//     storedItems.map((item) => json.encode(item.toJson())).toList();
//
//     // Store the updated list in shared preferences
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setStringList('selectedItems', encodedItems);
//
//     print(storedItems.length);
//
//     // Do any other necessary operations with the selected item
//     // ...
//
//     notifyListeners();
//   }
//
//
//
// //////////////
// //////////////storedItems///////////////////
//
//
//
//   Future<void> someFunction() async {
//     // Assuming you are inside an asynchronous function (marked with async keyword)
//
//     // Make changes to the stored items (add, remove, update)
//     // Example: storedItems = await fetchData();
//
//     // Get the updated list of stored items
//     storedItems = await getStoredItems();
//     controllers = List.generate(
//       storedItems.length,
//           (index) => TextEditingController(
//         text: storedItems[index].quantity.toString(),
//       ),
//     );
//     // storedItems = storedItems;
//     // controllers = controllers;
//     // Notify listeners about the changes
//     notifyListeners();
//   }
//
//
// // Retrieve the list of selected items from shared preferences
//   Future<List<MyStockData>> getStoredItems() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//
//     // Get the stored items as a list of strings
//     List<String>? encodedItems = prefs.getStringList('selectedItems');
//
//     // If there are no stored items, return an empty list
//     if (encodedItems == null) {
//       return [];
//     }
//
//     // Convert the list of strings back to a list of ProductList objects
//     List<MyStockData> selectedItems = encodedItems
//         .map((encodedItem) =>
//         MyStockData.fromJson(json.decode(encodedItem)))
//         .toList();
//
//     return selectedItems;
//   }
//   // void removeStoredItem(int index) async {
//   //   storedItems = await getStoredItems();
//   //
//   //   if (storedItems != null && index >= 0 && index < storedItems.length) {
//   //     storedItems.removeAt(index);
//   //
//   //     List<String> encodedItems =
//   //     storedItems.map((item) => json.encode(item.toJson())).toList();
//   //
//   //     SharedPreferences prefs = await SharedPreferences.getInstance();
//   //     prefs.setStringList('selectedItems', encodedItems);
//   //
//   //     // Update controllers list after removing an item
//   //     controllers = List.generate(
//   //       storedItems.length,
//   //           (index) => TextEditingController(
//   //         text: storedItems[index].quantity.toString(),
//   //       ),
//   //     );
//   //
//   //     // Ensure that the controllers list is cleared if there are no stored items
//   //     if (storedItems.isEmpty) {
//   //       controllers.clear();
//   //     }
//   //     print("Stored Item size after remove");
//   //
//   //     print(storedItems.length);
//   //     notifyListeners();
//   //   }
//   // }
//
//
//   // void removeStoredItem(ProductList item) async {
//   //   storedItems = await getStoredItems();
//   //
//   //   if (storedItems != null) {
//   //     storedItems.remove(item);
//   //
//   //     List<String> encodedItems =
//   //     storedItems.map((item) => json.encode(item.toJson())).toList();
//   //
//   //     SharedPreferences prefs = await SharedPreferences.getInstance();
//   //     prefs.setStringList('selectedItems', encodedItems);
//   //
//   //     controllers = List.generate(
//   //       storedItems.length,
//   //           (index) => TextEditingController(
//   //         text: storedItems[index].quantity.toString(),
//   //       ),
//   //     );
//   //
//   //     if (storedItems.isEmpty) {
//   //       controllers.clear();
//   //     }
//   //
//   //     print(storedItems.length);
//   //     notifyListeners();
//   //   }
//   // }
//
//
//
//
//
//   void removeStoredItem(int index) async {
//     storedItems = await getStoredItems();
//
//     if (storedItems != null && index >= 0 && index < storedItems.length-1) {
//       storedItems.removeAt(index);
//
//       List<String> encodedItems =
//       storedItems.map((item) => json.encode(item.toJson())).toList();
//
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       prefs.setStringList('selectedItems', encodedItems);
//       print(storedItems.length);
//
//
//       notifyListeners();
//     }
//   }
//   void removeStoredItemByTitle(String title) async {
//     storedItems = await getStoredItems();
//
//     storedItems?.removeWhere((item) => item.stkTitle == title);
//
//     // Update SharedPreferences with the modified list
//     List<String> encodedItems =
//         storedItems?.map((item) => json.encode(item.toJson()))?.toList() ?? [];
//
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setStringList('selectedItems', encodedItems);
//
//     controllers = List.generate(
//       storedItems?.length ?? 0,
//           (index) => TextEditingController(
//         text: storedItems![index].quantity.toString(),
//       ),
//     );
//
//     notifyListeners();
//   }
//
//
//   // void removeStoredItem(int index) async {
//   //   storedItems = await getStoredItems();
//   //
//   //   if (storedItems != null && index >= 0 && index < storedItems.length) {
//   //     storedItems.removeAt(index);
//   //
//   //     List<String> encodedItems =
//   //     storedItems.map((item) => json.encode(item.toJson())).toList();
//   //
//   //     SharedPreferences prefs = await SharedPreferences.getInstance();
//   //     prefs.setStringList('selectedItems', encodedItems);
//   //     print(storedItems.length);
//   //
//   //     // Update controllers list after removing an item
//   //     controllers = List.generate(
//   //       storedItems.length,
//   //           (index) => TextEditingController(
//   //         text: storedItems[index].quantity.toString(),
//   //       ),
//   //     );
//   //
//   //     notifyListeners();
//   //   }
//   // }
//
//
//
//
//
//
//
//
//
//
//   void removeAllStoredItems() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.remove('selectedItems');
//     storedItems.clear();
//
//     notifyListeners();
//   }
//
//
//   void removeAllFilterItems()  {
//     print("Before Clear");
//     print(_filteredItems.length);
//     print("After Clear");
//
//     _filteredItems.clear();
//
//     notifyListeners();
//   }
//
//
//
//   int? totalAmount;
//
//   String calculateTotalAmount(int index) {
//     if (index >= 0 && index < storedItems.length) {
//       totalAmount =
//       (storedItems[index].quantity * storedItems[index].unitprice) ;
//       return '৳${totalAmount.toString()}';
//     }
//     return '৳0.00';
//   }
//
//
//
//
//   List<MyStockData> _filteredItems = [];
//
//   List<MyStockData> get filteredItems => _filteredItems;
//
//   List<MyStockData> _addedItemsList = [];
//
//   List<MyStockData> get addedItemsList => _addedItemsList;
//
//   void updateAddedItemsList() {
//     _addedItemsList = _filteredItems.where((item) => item.is_Added).toList();
//     notifyListeners();
//   }
//   void searchItemVisibility() {
//     if (_filteredItems.length > 0)
//       searchItemVisible = true;
//     else
//       searchItemVisible = false;
//     notifyListeners();
//   }
//
//   void toggleSearchItemVisibility() {
//     searchItemVisible = !searchItemVisible;
//     notifyListeners();
//   }
//   void filterSearchResults(String query) {
//     if (query.isEmpty) {
//       _filteredItems = []; // Set it to an empty list when the query is empty
//     } else {
//       searchQuery = query;
//
//       _filteredItems = items
//           .where(
//               (item) => item.stkTitle.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//     print("-----------------filter items length-----------");
//     print(_filteredItems.length);
//     searchItemVisibility(); // Update visibility status
//
//     // Notify listeners to rebuild widgets that depend on filteredItems
//     notifyListeners();
//   }
//
//   List<MyStockData> get addedItems {
//     // Filter items where is_Added is true
//     return _filteredItems.where((item) => item.is_Added).toList();
//   }
//
//
//   void decreaseQuantity(int index) {
//     if (storedItems[index].quantity > 1) {
//       storedItems[index].quantity--;
//
//       print(storedItems[index].quantity);
//       notifyListeners();
//     }
//   }
//
//   void increaseQuantity(int index) {
//     storedItems[index].quantity++;
//     print(storedItems[index].quantity);
//     notifyListeners();
//   }
//   void updateIsAdded(int index) {
//     _filteredItems[index].is_Added = !_filteredItems[index].is_Added;
//     notifyListeners();
//   }
//
//   void updateSelectedItems(List<MyStockData> newSelectedItems) {
//     // Update the internal state with the new selected items
//     _selectedItems = newSelectedItems;
//
//     print(_selectedItems.length);
//     // Trigger a rebuild
//     notifyListeners();
//   }
//
//   void updateTotalPrice(int index) {
//     double totalPrice =
//     (storedItems[index].quantity * storedItems[index].unitprice).toDouble();
//     storedItems[index].productAmount = totalPrice;
//     notifyListeners();
//   }
//
//   void updateQuantity(int index, int newQuantity) {
//     if (index >= 0 && index < _filteredItems.length) {
//       _filteredItems[index].quantity = newQuantity;
//       notifyListeners();
//     }
//   }
//
// }
