import 'dart:convert';
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/model/customerlist/customerlist.dart';
import 'package:untitled/model/peoductList/productlist.dart';
import 'package:untitled/screens/cashpayment/cash_payment.dart';

import 'package:untitled/widgets/widgets.dart';

import '../../model/stck_detls_lst.dart';
import '../../providers/newsell/newSellProvider.dart';
import '../../widgets/colors.dart';

class NewSale extends StatefulWidget {
  const NewSale({Key? key}) : super(key: key);

  @override
  State<NewSale> createState() => _NewSaleState();
}

class _NewSaleState extends State<NewSale> {
  // double heightOfSingleItem =
  //     65.0; // Change the value based on your item height
  // double verticalSpacingBetweenItems = 8.0;
  // final ScrollController _scrollController = ScrollController();
  // TextEditingController priceController = TextEditingController();
  //
  // late NewSellProvider productProvider; // Declare productProvider variable

  // List<TextEditingController> controllers = [];

  void decreaseQuantity(ProductList product, int index) {
    productProvider.decreaseQuantity(index);
  }

  void increaseQuantity(ProductList product, int index) {
    productProvider.increaseQuantity(index);
  }

  void updateTotalPrice(ProductList selectedItem, int index) {
    productProvider.updateTotalPrice(index);
  }

  double heightOfSingleItem = 65.0;
  double verticalSpacingBetweenItems = 8.0;
  final ScrollController _scrollController = ScrollController();
  TextEditingController priceController = TextEditingController();

  late NewSellProvider productProvider;

  List<TextEditingController> controllers = [];
  bool _searchIconVisible = true;
  bool firstContainerVisible = false;
  bool searchItemVisible = false;
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    productProvider = context.read<NewSellProvider>();

    productProvider.filteredItems.clear();
    productProvider.selectedItems.clear();
    controllers = List.generate(
      productProvider.items.length,
      (index) => TextEditingController(
        text: productProvider.items[index].quantity.toString(),
      ),
    );
  }

  // void updateTotalPrice(ProductList selectedItem, int index) {
  //
  //   setState(() {
  //     double totalPrice = (selectedItem.quantity * selectedItem.unitprice).toDouble();
  //     controllers[index].text = '৳${totalPrice.toString()}';
  //     selectedItem.quantity = int.parse(controllers[index].text);
  //
  //     // Update the quantity using the provider
  //     productProvider.updateQuantity(index, selectedItem.quantity);
  //   });
  // }

  // void filterSearchResults(String query) {
  //   if (query.isEmpty) {
  //     setState(() {
  //       filteredItems = 0 as List<ProductList>;
  //     });
  //   } else {
  //     List<ProductList> searchResults = productProvider.items
  //         .where(
  //             (item) => item.title.toLowerCase().contains(query.toLowerCase()))
  //         .toList();
  //
  //     setState(() {
  //       filteredItems = searchResults;
  //       print(filteredItems.length);
  //       print(''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           ''''''
  //           '');
  //     });
  //   }
  // }

  void filterSearchResults(String query) {
    productProvider.filterSearchResults(query);
  }

  void filterIsAddedResults() {
    List<ProductList> searchResults =
        productProvider.items.where((item) => item.is_Added == false).toList();
    // No need to use setState here, just update the provider's state
    // and let listeners (widgets using this provider) rebuild accordingly.
    productProvider.updateSelectedItems(searchResults);
  }

  Widget build(BuildContext context) {
    productProvider = Provider.of<NewSellProvider>(
        context); // Initialize productProvider in build

    return Scaffold(
      // appBar: AppBar(
      resizeToAvoidBottomInset: false,
      // Add this line to prevent resizing when the keyboard appears

      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: myGradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                  child: appBar(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
                child: serachItem(),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: headerItemTitle(),
              ),

              //
              if (productProvider.addedItems.length > 0)
              Flexible(
                child: SingleChildScrollView(
                  child: Consumer<NewSellProvider>(
                    builder: (context, provider, child) {
                      return listItem(provider);
                    },
                  ),
                ),
              )
              else
                Container()
            ],
          ),
        ),
        if (productProvider.filteredItems.length > 0)
          Positioned(
            top: 172,
            left: 20,
            right: 20,
            child: Consumer<NewSellProvider>(
              builder: (context, provider, child) {
                // Your widget code that depends on provider state

                return searchItem(
                  provider,
                  // other parameters...
                );
              },
            ),
          )
        else
          // Widget to show when filteredItems.length is not greater than 0
          Container(
              // Replace with your widget configuration
              ),
      ]),
    );
  }

  Widget searchItem(NewSellProvider filteredItems) {
    return GestureDetector(
      onTap: (){
        // setState(() {
        //   searchItemVisible=false;
        //
        // });
        filteredItems.toggleSearchItemVisibility();
      },
      child: Visibility(
        visible: filteredItems.searchItemVisible,
        child: Container(
          width: 388,
          height: filteredItems.filteredItems.length * 50.0, // Set a fixed value based on your item's height
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
            itemCount: filteredItems.filteredItems.length,
            // The number of items in your list
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
                              // Container(
                              //   width: 43,
                              //   height: 43,
                              //   decoration: ShapeDecoration(
                              //     image: DecorationImage(
                              //       image: AssetImage(filteredItems[index]
                              //           .image),
                              //       fit: BoxFit.fill,
                              //     ),
                              //     shape: OvalBorder(),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      filteredItems.filteredItems[index].title,
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      filteredItems.filteredItems[index].stknmbr,
                                      style: TextStyle(
                                        color: Color(0xFF7A7A7A),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    stkItm1(
                                        '(In Stk: ${filteredItems.filteredItems[index].stknmbr.toString()})',
                                        Color(0xFF2E7229),
                                        12),
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
                                    // Text(
                                    //   "$items[index].amount",
                                    //   textAlign: TextAlign.right,
                                    //   style: TextStyle(
                                    //     color: Color(0xFFEE6161),
                                    //     fontSize: 14,
                                    //     fontFamily: 'Mulish',
                                    //     fontWeight: FontWeight.w600,
                                    //     height: 0,
                                    //   ),
                                    // ),
                                    // Padding(
                                    //   padding:
                                    //   EdgeInsets.only(left: 35.0),
                                    //   child: Text(
                                    //     items[index].title,
                                    //     style: TextStyle(
                                    //       color: Color(0xFF7A7A7A),
                                    //       fontSize: 12,
                                    //       fontFamily: 'Mulish',
                                    //       fontWeight: FontWeight.w500,
                                    //       height: 0,
                                    //     ),
                                    //   ),
                                    // )
                                  ],
                                ),
                                if (filteredItems.filteredItems[index].is_Added ==
                                    false)
                                  GestureDetector(
                                    onTap: () {

                                      filteredItems.updateIsAdded(index);
                                    },
                                    child: Container(
                                      width: 66,
                                      height: 34,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF3868CE),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1, color: Color(0xFF3868CE)),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add',
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
                                  )
                                else
                                  GestureDetector(
                                    onTap: () {
                                      // setState(() {
                                      //   //productProvider.items[index].is_Added = false;
                                      //   filterIsAddedResults();
                                      // });
                                      filteredItems.updateIsAdded(index);
                                    },
                                    child: Container(
                                      width: 66,
                                      height: 34,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF7A7A7A),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1, color: Color(0xFF7A7A7A)),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Added',
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
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // customDivider()
                      Divider()
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget listItem(NewSellProvider provider) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: provider.addedItems.length *
              (heightOfSingleItem + verticalSpacingBetweenItems) +
          230,
      // decoration: ShapeDecoration(
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(5)),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 0),
            child: Container(
              color: Colors.white,
              height: productProvider.addedItems.length *
                  (heightOfSingleItem + verticalSpacingBetweenItems),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: productProvider.addedItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    // behavior: HitTestBehavior.translucent,
                    // Pass the gesture through to the list item

                    onTap: () {
                      // Handle the click event
                      // _navigateToDetailsScreen(context, items[index]);
                    },

                    child: Container(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 8.0, top: 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 97,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    stkItm1(productProvider.addedItems[index].title,
                                        Color(0xFF282828), 16),
                                    stkItm1(
                                        productProvider.addedItems[index].stknmbr
                                            .toString(),
                                        Color(0xFF7A7A7A),
                                        14),
                                    // stkItm1(
                                    //     '(In Stk: ${items[index].stknmbr.toString()})',
                                    //     Color(0xFF2E7229),
                                    //     12),
                                  ],
                                ),
                              ),
                              Container(
                                width: 102,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Handle the click event for '-'
                                        decreaseQuantity(
                                            productProvider.addedItems[index],
                                            index);
                                        print(
                                            "++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                                        print(productProvider
                                            .filteredItems[index].quantity
                                            .toString());
                                      },
                                      child: Container(
                                        width: 31,
                                        height: 42,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF3868CE),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF3868CE)),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '-',
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
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Container(
                                          height: 42,
                                          width: 20,
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              // child: Text(
                                              //   items[index]
                                              //       .quantity
                                              //       .toString(),
                                              //   textAlign:
                                              //       TextAlign
                                              //           .center,
                                              //   style:
                                              //       TextStyle(
                                              //     color: Color(
                                              //         0xFF282828),
                                              //     fontSize: 16,
                                              //     fontFamily:
                                              //         'Mulish',
                                              //     fontWeight:
                                              //         FontWeight
                                              //             .w500,
                                              //     height: 0,
                                              //   ),
                                              // ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 4.0, left: 4),
                                                child: TextFormField(
                                                  controller:
                                                      controllers[index],
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: Color(0xFF282828),
                                                    fontSize: 16,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                  onChanged: (newText) {
                                                    // Update the total price and synchronize the quantity for every item
                                                    updateTotalPrice(
                                                        productProvider
                                                            .addedItems[index],
                                                        index);
                                                  },
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Quantity: ${productProvider.filteredItems[index].quantity}', // Set the hintText dynamically
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Handle the click event for '+'
                                        increaseQuantity(
                                            productProvider.filteredItems[index],
                                            index);
                                        print(productProvider
                                            .filteredItems[index].quantity);
                                      },
                                      child: Container(
                                        width: 31,
                                        height: 42,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF3868CE),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF3868CE)),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+',
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
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 50,
                                  child: Text(
                                    '৳${(productProvider.filteredItems[index].quantity * productProvider.filteredItems[index].unitprice).toString()}',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          if (productProvider.filteredItems.length > 1) horizontalLine()
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.transparent.withOpacity(0.3),
            child: Column(
              children: [
                InkWell(
                  onTap: () async{
                    setState(() {
                      saveListToPrefs(productProvider.items);
                      _navigateToDetailsScreen2(context,);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Container(
                      width: 388,
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
                          'Payment',
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
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        for (var item in productProvider.items) {
                          item.quantity = 1;
                        }
                      });
                    },
                    child: DottedBorder(
                      color: Color(0xFFEE6161),
                      // Border color
                      strokeWidth: 2,
                      // Border width
                      borderType: BorderType.RRect,
                      // Rounded rectangle border
                      radius: Radius.circular(999),
                      // Border radius
                      // padding: EdgeInsets.all(5), // Padding around the border
                      child: Container(
                        width: 396, // Container width
                        height: 50, // Container height
                        decoration: BoxDecoration(
                          color: Color(0xFFFDE3E5),
                          borderRadius:
                              BorderRadius.circular(999), // Border radius
                        ), // Background color
                        child: Center(
                            child: Text(
                          'Reset',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEE6161),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Future<void> saveListToPrefs(List<ProductList> items) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = jsonEncode(items.map((item) => item.toJson()).toList());
    prefs.setString('productList', jsonData);
    print(jsonData);
  }
  Widget headerItemTitle() {
    return Container(
      width: 388,
      height: 50,
      decoration: ShapeDecoration(
        color: Color(0xFF3868CE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Product',
              style: TextStyle(
                color: Color(0xFFFEFEFE),
                fontSize: 16,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Text(
              'Amount',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFEFEFE),
                fontSize: 16,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Text(
              'Price',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFFFEFEFE),
                fontSize: 16,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget appBar() {
    return Row(
      // Center the children horizontally
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/left_arrow.png'),
                // Replace 'your_image.png' with the actual path to your asset image
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
              // You can also add other decoration properties here, such as borderRadius, border, color, etc.
            ),
          ),
        ),
        SizedBox(width: 118),
        // Add a SizedBox for some space between icon and text
        Text(
          'New Sell',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFFEFEFE),
            fontSize: 20,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ],
    );
  }

  Widget serachItem() {
    return Container(
      width: 388,
      height: 50,
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
            Expanded(
              child: TextFormField(
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
                  hintText: 'Search and click ‘Add’',
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
            Icon(
              Icons.search,
              color: Color(0xFF7A7A7A),
            )
          ],
        ),
      ),
    );
  }
}

List<TextSpan> highlightText(String text, String query) {
  List<TextSpan> spans = [];

  // Handle the case when the query is empty
  if (query.isEmpty) {
    spans.add(TextSpan(text: text));
    return spans;
  }

  // Perform case-insensitive search
  String lowerCaseText = text.toLowerCase();
  String lowerCaseQuery = query.toLowerCase();

  int start = 0;
  while (start < text.length) {
    int matchIndex = lowerCaseText.indexOf(lowerCaseQuery, start);
    if (matchIndex == -1) {
      spans.add(TextSpan(text: text.substring(start)));
      break;
    }

    // Add non-matching text
    if (matchIndex > start) {
      spans.add(TextSpan(text: text.substring(start, matchIndex)));
    }

    // Add matching text with green color
    spans.add(TextSpan(
      text: text.substring(matchIndex, matchIndex + query.length),
      style: TextStyle(color: Colors.green),
    ));

    start = matchIndex + query.length;
  }

  return spans;
}

void _navigateToDetailsScreen(BuildContext context, ProductList item) {
  // Navigate to a new screen with the selected item data
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailsScreen(item: item),
    ),
  );
}
//
// void _navigateToDetailsScreen1(BuildContext context, List<ProductList> item) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => CashPayment(items: item),
//     ),
//   );
// }

void _navigateToDetailsScreen2(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CashPayment(),
    ),
  );
}

class DetailsScreen extends StatelessWidget {
  final ProductList item;

  DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    // Build your details screen using the item data
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Product: ${item.title}'),
            Text('Subtitle: ${item.productAmount}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}

Widget stkItm1(String text, Color color, double fontSize) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  );
}

Widget horizontalLine() {
  return Container(
    width: 369,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 0.78,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color(0xFFC4C4C4),
        ),
      ),
    ),
  );
}
