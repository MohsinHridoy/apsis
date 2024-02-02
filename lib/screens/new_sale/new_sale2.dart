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
import 'package:untitled/screens/dashboard/dashboard.dart';

import 'package:untitled/widgets/widgets.dart';

import '../../model/stck_detls_lst.dart';
import '../../providers/newsell/newSellProvider.dart';
import '../../widgets/colors.dart';

class NewSale2 extends StatefulWidget {
  const NewSale2({Key? key}) : super(key: key);

  @override
  State<NewSale2> createState() => _NewSale2State();
}

class _NewSale2State extends State<NewSale2> {
  double heightOfSingleItem = 65.0;
  double verticalSpacingBetweenItems = 8.0;
  late FocusNode _searchFocusNode;



  late NewSellProvider productProvider;

  // List<TextEditingController> _controllers1 = [];
  bool firstContainerVisible = false;
  bool searchItemVisible = false;
  // late List<ProductList> storedItems;
  TextEditingController? searchController;

  @override
  void initState() {
    super.initState();
    productProvider = context.read<NewSellProvider>();
    for (ProductList item in productProvider.items) {
      item.is_Added=false;
    }
    _searchFocusNode = FocusNode();

    print(productProvider.items);
    productProvider.removeAllStoredItems();

    print("+++++++++++++++++++++++++++++++++++++++++++++filter items--------");



    print("---------filter items--------");
    print(productProvider.filteredItems);
    print(productProvider.items);
    productProvider.storedItems.clear();
    // productProvider.items.clear();


    productProvider.someFunction();


    // productProvider.initControllers();
    // productProvider.initControllers();

    searchController = TextEditingController();

  }

  void filterSearchResults(String query) {
    productProvider.filterSearchResults(query);
  }


  Widget build(BuildContext context) {
    productProvider = Provider.of<NewSellProvider>(
        context); // Initialize productProvider in build

    return GestureDetector(
      onTap: () {
        // When tapped outside the search bar, unfocus the keyboard
        if (_searchFocusNode.hasFocus) {
          _searchFocusNode.unfocus();
          setState(() {
            searchItemVisible = false;
          });
        }
      },
      child: Scaffold(
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
                  child: serachItem1(),
                ),

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: headerItemTitle(),
                ),

                //
                // if (storedItems.length > 0)
                //   Flexible(
                //     child: SingleChildScrollView(
                //       child: Consumer<NewSellProvider>(
                //         builder: (context, provider, child) {
                //           return listItem(provider);
                //         },
                //       ),
                //     ),
                //   )
                // else
                //   Container()
                if (productProvider.storedItems.length > 0)
                  Flexible(child: SingleChildScrollView(child: listItem(productProvider.storedItems)))
                  // Flexible(
                  //   child: SingleChildScrollView(
                  //     child: Consumer<NewSellProvider>(
                  //       builder: (context, provider, child) {
                  //         return listItem(provider);
                  //       },
                  //     ),
                  //   ),
                  // )
                // else
                //   Container()
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
      ),
    );
  }
  Widget serachItem1() {
    // FocusNode _focusNode = FocusNode();
    //
    // _focusNode.addListener(() {
    //   setState(() {
    //     // Update the visibility of searchItem1 based on focus
    //     searchItemVisible = false;
    //   });
    // });

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
              child: Focus(
                onFocusChange: (hasFocus) {
                  if (!hasFocus) {
                    // Keyboard is dismissed
                        productProvider.searchItemVisible = false;
                        setState(() {

                        });
                  }
                },
                child: TextField(
                  controller: productProvider.searchController,
                  focusNode: _searchFocusNode,
                
                  // onTapOutside: (event) {
                  //         productProvider.searchItemVisible=false;
                  //   print('onTapOutside');
                  //   FocusManager.instance.primaryFocus?.unfocus();
                  // },
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                  // focusNode: false,
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

  Widget searchItem(NewSellProvider filteredItems) {

    return GestureDetector(
      onTap: () {
        // setState(() {
        //   searchItemVisible=false;
        //
        // });
        filteredItems.toggleSearchItemVisibility();
      },
      child: Visibility(
        visible: filteredItems.searchItemVisible && filteredItems.filteredItems.isNotEmpty,        // visible: filteredItems.searchItemVisible,
        child: Container(
          width: 388,
          height: filteredItems.filteredItems.length * 110.0,
          // Set a fixed value based on your item's height
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
            // physics: NeverScrollableScrollPhysics(),


            // The number of items in your list
            itemBuilder: (BuildContext context, int index) {
              // This is a callback function that builds each item in the list
              // You can use the 'index' to access the data for the current item
              // ProductList currentItem = filteredItems.filteredItems.length > 0
              //     ? filteredItems.filteredItems[index]
              //     : filteredItems.items[index];
              //
              // // Check if the item's name contains the search query
              // // Check if the item's name contains the search query
              // String name = currentItem.title;
              // // String role = currentItem.role;
              //
              // List<TextSpan> textSpans =
              // highlightText(name, filteredItems.searchQuery);

              ProductList currentItem = filteredItems.filteredItems[index];
              String name = currentItem.title;
              List<TextSpan> textSpans = highlightText(name, filteredItems.searchQuery);

              print("------------------------listItem----------------------------");
              print("------------------------filter item----------------------------");

              print(filteredItems.filteredItems[index].title);
              print(textSpans);
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
                                    // Text(
                                    //   filteredItems.filteredItems[index].title,
                                    //   style: TextStyle(
                                    //     color: Color(0xFF282828),
                                    //     fontSize: 14,
                                    //     fontFamily: 'Mulish',
                                    //     fontWeight: FontWeight.w500,
                                    //     height: 0,
                                    //   ),
                                    // ),
                                    RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF282828),
                                        ),
                                        children: textSpans,
                                      ),
                                    ),
                                    Text(
                                      filteredItems
                                          .filteredItems[index].stknmbr,
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
                                if (filteredItems
                                    .filteredItems[index].is_Added ==
                                    false)
                                  GestureDetector(
                                    onTap: () async{

                                      await  productProvider.selectAndStoreItem(filteredItems.filteredItems[index]);
                                      productProvider.someFunction();

                                      print("stored Item");
                                      // print(productProvider.storedItems.length);
                                      // print(productProvider.storedItems[index].title);
                                      // print(productProvider.storedItems[index].is_Added);



                                      productProvider.storedItems = await productProvider.getStoredItems();
                                      print("Stored item Add");
                                      // print(productProvider.storedItems.length);
                                      // if(productProvider.storedItems.isNotEmpty)
                                      //   print(productProvider.storedItems[0].title);
                                      // print(productProvider.storedItems[productProvider.storedItems.length - 1].title);
                                      //
                                      //
                                      // print(productProvider.addedItems.length);
                                      filteredItems.updateIsAdded(index);
                                    },
                                    child: Container(
                                      width: 66,
                                      height: 34,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF3868CE),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF3868CE)),
                                          borderRadius:
                                          BorderRadius.circular(5),
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

                                      // filteredItems.updateIsAdded(index);
                                      productProvider.removeStoredItemByTitle(productProvider.filteredItems[index].title);


                                      // if (index >= 0 && index < productProvider.filteredItems.length) {
                                      //   // Access the element at the specified index
                                      //   //
                                      //   // print(productProvider.storedItems[index].title);
                                      //   // print(productProvider.storedItems[index].is_Added);
                                      // } else {
                                      //   print("Index out of bounds: $index");
                                      // }

                                      // productProvider.removeStoredItem(index);
                                      // productProvider.removeStoredItemByTitle(productProvider.storedItems[index].title);
                                      // productProvider.someFunction();

                                      // print("stored Item minus");
                                      // print(productProvider.storedItems[index].title);
                                      // print(productProvider.storedItems[index].is_Added);

                                      print("stored Item after remove");

                                      filteredItems.updateIsAdded(index);

                                      // print(productProvider.storedItems.length);
                                      // print(productProvider.storedItems.indexed);


                                    },
                                    child: Container(
                                      width: 66,
                                      height: 34,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF7A7A7A),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF7A7A7A)),
                                          borderRadius:
                                          BorderRadius.circular(5),
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
        // No more matches, add the remaining text
        spans.add(TextSpan(text: text.substring(start)));
        break;
      }

      // Add non-matching text before the match
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



  // List<TextSpan> highlightText(String text, String query) {
  //   List<TextSpan> spans = [];
  //
  //   // Handle the case when the query is empty
  //   if (query.isEmpty) {
  //     spans.add(TextSpan(text: text));
  //     print(spans.length);
  //     return spans;
  //   }
  //
  //   // Perform case-insensitive search
  //   String lowerCaseText = text.toLowerCase();
  //   String lowerCaseQuery = query.toLowerCase();
  //
  //   int start = 0;
  //   while (start < text.length) {
  //     int matchIndex = lowerCaseText.indexOf(lowerCaseQuery, start);
  //     if (matchIndex == -1) {
  //       // No more matches, add the remaining text
  //       spans.add(TextSpan(text: text.substring(start)));
  //       break;
  //     }
  //
  //     // Add non-matching text
  //     if (matchIndex > start) {
  //       spans.add(TextSpan(text: text.substring(start, matchIndex)));
  //     }
  //
  //     // Add matching text with green color
  //     spans.add(TextSpan(
  //       text: text.substring(matchIndex, matchIndex + query.length),
  //       style: TextStyle(color: Colors.green),
  //     ));
  //
  //     start = matchIndex + query.length;
  //   }
  //
  //   return spans;
  // }









  Widget listItem(List<ProductList> storedItems) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: productProvider.storedItems.length *
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
              height: productProvider.storedItems.length *
                  (heightOfSingleItem + verticalSpacingBetweenItems)+30,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: storedItems.length,
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
                                    stkItm1(productProvider.storedItems[index].title,
                                        Color(0xFF282828), 16),
                                    stkItm1(
                                        productProvider.storedItems[index].stknmbr
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
                              SizedBox(
                                width: 0.1,
                              ),
                              Container(
                                width: 102,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        decreaseQuantity(
                                            storedItems[index], index);
                                        updateTotalPrice(storedItems[index],index);



                                        print(
                                            "++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                                        // print(provider
                                        //     .addedItems[index].quantity
                                        //     .toString());
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
                                          width: 40,
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
                                                        right: 1.0, left: 1),
                                                    // child: TextFormField(
                                                    //   controller:
                                                    //       _controllers1[index],
                                                    //   textAlign: TextAlign.right,
                                                    //   style: TextStyle(
                                                    //     color: Color(0xFF282828),
                                                    //     fontSize: 16,
                                                    //     fontFamily: 'Mulish',
                                                    //     fontWeight: FontWeight.w500,
                                                    //     height: 0,
                                                    //   ),
                                                    //   onChanged: (newText) {
                                                    //     // Update the quantity for the corresponding item
                                                    //     int newQuantity =
                                                    //         int.tryParse(newText) ??
                                                    //             0;
                                                    //     _controllers1[index].text =
                                                    //         newQuantity.toString();
                                                    //     productProvider
                                                    //         .updateQuantity(
                                                    //             index, newQuantity);
                                                    //   },
                                                    //   // decoration: InputDecoration(
                                                    //   //   hintText: 'Quantity: ${provider.addedItems[index].quantity}',
                                                    //   // ),
                                                    // ),


                                                    child:  TextFormField(
                                                      // controller: (index < _controllers!.length) ? _controllers![index] : null,
                                                      // controller:  provider.controllers[index],
                                                      controller: (index < productProvider.controllers!.length) ? productProvider.controllers![index] : null,
                                                      // controller: (index < productProvider.controllers!.length-1) ? productProvider.controllers![index] : null,
                                                       maxLength: 3,
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: Color(0xFF282828),
                                                        fontSize: 16,
                                                        fontFamily: 'Mulish',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                      buildCounter: (BuildContext context, {required int currentLength, required bool isFocused, required int? maxLength}) {
                                                        // Return an empty container to hide the counter indicator
                                                        return Visibility(visible:false,child: Container());
                                                      },
                                                      onChanged: (newText) {



                                                        int newQuantity = int.tryParse(newText) ?? 0;

                                                        // Check if the index is within the valid range
                                                        setState(() {
                                                          if (index >= 0 && index < storedItems.length) {
                                                            productProvider.controllers[index].text = newQuantity.toString();


                                                            productProvider.storedItems[index].quantity = newQuantity;
                                                            productProvider.storedItems[index].productAmount = (newQuantity * productProvider.storedItems[index].unitprice).toDouble();

                                                            // Print or update any other relevant information
                                                            print("Updated quantity: ${productProvider.storedItems[index].quantity}");
                                                            print("Updated product amount: ${productProvider.storedItems[index].productAmount}");
                                                          }

                                                        });



                                                        // int newQuantity = int.tryParse(newText) ?? 0;
                                                        // controllers[index].text = newQuantity.toString();
                                                        // // provider.updateQuantity(index, newQuantity);
                                                        // setState(() {
                                                        //   // if (index >= 0 && index < storedItems.length) {
                                                        //   storedItems[index].quantity = newQuantity;
                                                        //   print("ooooooooooooooooooooooooooooooooooooooooo");
                                                        //   print(controllers[index-1].text);
                                                        //   // notifyListeners();]
                                                        //
                                                        //   // print(storedItems[index-1].quantity);
                                                        //   // }
                                                        // });

                                                        // int newQuantity = int.tryParse(newText) ?? 0;
                                                        //
                                                        // // Check if the index is within the valid range
                                                        // if (index >= 0 && index < storedItems.length) {
                                                        //   productProvider.controllers[index].text = newQuantity.toString();
                                                        //     // print(productProvider.controllers[index-1].text);
                                                        //     // print(productProvider.storedItems[index-1].quantity);
                                                        //
                                                        //
                                                        //
                                                        //
                                                        //
                                                        //   //
                                                        //   // setState(() {
                                                        //   //   storedItems[index].quantity = newQuantity;
                                                        //   //   print("Updated quantity: ${storedItems[index].quantity}");
                                                        //   // });
                                                        //   productProvider.storedItems[index].quantity = newQuantity;
                                                        //   print(productProvider.storedItems[index].quantity);
                                                        //   // productProvider.storedItems[index].productAmount = newQuantity * productProvider.storedItems[index].productAmount;
                                                        //       print("product amount");
                                                        //   // print(productProvider.storedItems[index].productAmount);
                                                        //
                                                        //
                                                        // }




                                                      },
                                                    ))
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Handle the click event for '+'
                                        increaseQuantity(
                                            storedItems[index], index);
                                        updateTotalPrice(storedItems[index],index);


                                        // int updatedQuantity =
                                        //     provider.addedItems[index].quantity;
                                        // provider.controllers[index].text =
                                        //     updatedQuantity.toString();
                                        // print(provider
                                        //     .addedItems[index].quantity);
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
                                width: 3.5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Container(
                                  width: 60,
                                  child: Text(
                                    "${productProvider.storedItems[index].productAmount}",
                                    // '৳${productProvider.calculateTotalAmount(index)}',
                                    // '৳',
                                    // '৳${(productProvider.storedItems[index].quantity * productProvider.storedItems[index].unitprice).toString()}',
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
                          // if (provider.addedItems.length > 1) horizontalLine()
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
                  onTap: () async {
                    setState(() {
                      saveListToPrefs(productProvider.storedItems);
                      _navigateToDetailsScreen2(
                        context,
                      );
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
                  child: GestureDetector(
                    onTap: () {

                      productProvider.filteredItems.clear();
                      productProvider.storedItems.clear();
                      for (ProductList item in productProvider.items) {
                        item.is_Added=false;
                      }
                      productProvider.removeAllFilterItems();

                      // setState(() {
                      //   // for (var item in productProvider.items) {
                      //   //   item.quantity = 1;
                      //   // }
                      //
                      // });
                      productProvider.addedItems.length = 0;
                      print(productProvider.addedItems.length);
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


  // Widget listItem(NewSellProvider provider) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: provider.addedItems.length *
  //         (heightOfSingleItem + verticalSpacingBetweenItems) +
  //         230,
  //     // decoration: ShapeDecoration(
  //     //   shape: RoundedRectangleBorder(
  //     //       borderRadius: BorderRadius.circular(5)),
  //     // ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 0),
  //           child: Container(
  //             color: Colors.white,
  //             height: provider.addedItems.length *
  //                 (heightOfSingleItem + verticalSpacingBetweenItems),
  //             child: ListView.builder(
  //               physics: NeverScrollableScrollPhysics(),
  //               itemCount: provider.addedItems.length,
  //               itemBuilder: (BuildContext context, int index) {
  //                 return GestureDetector(
  //                   // behavior: HitTestBehavior.translucent,
  //                   // Pass the gesture through to the list item
  //
  //                   onTap: () {
  //                     // Handle the click event
  //                     // _navigateToDetailsScreen(context, items[index]);
  //                   },
  //
  //                   child: Container(
  //                     padding: EdgeInsets.only(
  //                         left: 15.0, right: 15.0, bottom: 8.0, top: 1),
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Row(
  //                           // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Container(
  //                               width: 97,
  //                               child: Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   stkItm1(provider.addedItems[index].title,
  //                                       Color(0xFF282828), 16),
  //                                   stkItm1(
  //                                       provider.addedItems[index].stknmbr
  //                                           .toString(),
  //                                       Color(0xFF7A7A7A),
  //                                       14),
  //                                   // stkItm1(
  //                                   //     '(In Stk: ${items[index].stknmbr.toString()})',
  //                                   //     Color(0xFF2E7229),
  //                                   //     12),
  //                                 ],
  //                               ),
  //                             ),
  //                             Container(
  //                               width: 102,
  //                               child: Row(
  //                                 children: [
  //                                   GestureDetector(
  //                                     onTap: () {
  //                                       // Handle the click event for '-'
  //                                       decreaseQuantity(
  //                                           provider.addedItems[index], index);
  //                                       print(
  //                                           "++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  //                                       print(provider
  //                                           .addedItems[index].quantity
  //                                           .toString());
  //                                     },
  //                                     child: Container(
  //                                       width: 31,
  //                                       height: 42,
  //                                       decoration: ShapeDecoration(
  //                                         color: Color(0xFF3868CE),
  //                                         shape: RoundedRectangleBorder(
  //                                           side: BorderSide(
  //                                               width: 1,
  //                                               color: Color(0xFF3868CE)),
  //                                           borderRadius:
  //                                           BorderRadius.circular(10),
  //                                         ),
  //                                       ),
  //                                       child: Center(
  //                                         child: Text(
  //                                           '-',
  //                                           style: TextStyle(
  //                                             color: Colors.white,
  //                                             fontSize: 16,
  //                                             fontFamily: 'Mulish',
  //                                             fontWeight: FontWeight.w700,
  //                                             height: 0,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                   Expanded(
  //                                     child: Padding(
  //                                       padding: const EdgeInsets.all(0.0),
  //                                       child: Container(
  //                                         height: 42,
  //                                         width: 20,
  //                                         child: Center(
  //                                           child: Padding(
  //                                             padding:
  //                                             const EdgeInsets.all(1.0),
  //                                             // child: Text(
  //                                             //   items[index]
  //                                             //       .quantity
  //                                             //       .toString(),
  //                                             //   textAlign:
  //                                             //       TextAlign
  //                                             //           .center,
  //                                             //   style:
  //                                             //       TextStyle(
  //                                             //     color: Color(
  //                                             //         0xFF282828),
  //                                             //     fontSize: 16,
  //                                             //     fontFamily:
  //                                             //         'Mulish',
  //                                             //     fontWeight:
  //                                             //         FontWeight
  //                                             //             .w500,
  //                                             //     height: 0,
  //                                             //   ),
  //                                             // ),
  //                                             child: Padding(
  //                                               padding: const EdgeInsets.only(
  //                                                   right: 4.0, left: 4),
  //                                               // child: TextFormField(
  //                                               //   controller:
  //                                               //       _controllers1[index],
  //                                               //   textAlign: TextAlign.right,
  //                                               //   style: TextStyle(
  //                                               //     color: Color(0xFF282828),
  //                                               //     fontSize: 16,
  //                                               //     fontFamily: 'Mulish',
  //                                               //     fontWeight: FontWeight.w500,
  //                                               //     height: 0,
  //                                               //   ),
  //                                               //   onChanged: (newText) {
  //                                               //     // Update the quantity for the corresponding item
  //                                               //     int newQuantity =
  //                                               //         int.tryParse(newText) ??
  //                                               //             0;
  //                                               //     _controllers1[index].text =
  //                                               //         newQuantity.toString();
  //                                               //     productProvider
  //                                               //         .updateQuantity(
  //                                               //             index, newQuantity);
  //                                               //   },
  //                                               //   // decoration: InputDecoration(
  //                                               //   //   hintText: 'Quantity: ${provider.addedItems[index].quantity}',
  //                                               //   // ),
  //                                               // ),
  //
  //
  //                                               child: provider.controllers.isNotEmpty && provider.controllers.length > index
  //                                                   ? TextFormField(
  //                                                 controller:  _controllers![index],
  //                                                 // controller:  provider.controllers[index],
  //
  //                                                 textAlign: TextAlign.right,
  //                                                 style: TextStyle(
  //                                                   color: Color(0xFF282828),
  //                                                   fontSize: 16,
  //                                                   fontFamily: 'Mulish',
  //                                                   fontWeight: FontWeight.w500,
  //                                                   height: 0,
  //                                                 ),
  //                                                 onChanged: (newText) {
  //                                                   int newQuantity = int.tryParse(newText) ?? 0;
  //                                                   provider.controllers[index].text = newQuantity.toString();
  //                                                   provider.updateQuantity(index, newQuantity);
  //                                                 },
  //                                               )
  //                                                   : Container(),                                               ),
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                   GestureDetector(
  //                                     onTap: () {
  //                                       // Handle the click event for '+'
  //                                       increaseQuantity(
  //                                           provider.addedItems[index],
  //                                           index);
  //                                       int updatedQuantity =
  //                                           provider.addedItems[index].quantity;
  //                                       provider.controllers[index].text =
  //                                           updatedQuantity.toString();
  //                                       print(provider
  //                                           .addedItems[index].quantity);
  //                                     },
  //                                     child: Container(
  //                                       width: 31,
  //                                       height: 42,
  //                                       decoration: ShapeDecoration(
  //                                         color: Color(0xFF3868CE),
  //                                         shape: RoundedRectangleBorder(
  //                                           side: BorderSide(
  //                                               width: 1,
  //                                               color: Color(0xFF3868CE)),
  //                                           borderRadius:
  //                                           BorderRadius.circular(10),
  //                                         ),
  //                                       ),
  //                                       child: Center(
  //                                         child: Text(
  //                                           '+',
  //                                           style: TextStyle(
  //                                             color: Colors.white,
  //                                             fontSize: 16,
  //                                             fontFamily: 'Mulish',
  //                                             fontWeight: FontWeight.w700,
  //                                             height: 0,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                             SizedBox(
  //                               width: 3,
  //                             ),
  //                             Padding(
  //                               padding: const EdgeInsets.only(right: 8.0),
  //                               child: Container(
  //                                 width: 50,
  //                                 child: Text(
  //                                   '৳${(provider.addedItems[index].quantity * provider.addedItems[index].unitprice).toString()}',
  //                                   textAlign: TextAlign.right,
  //                                   style: TextStyle(
  //                                     color: Color(0xFF282828),
  //                                     fontSize: 16,
  //                                     fontFamily: 'Mulish',
  //                                     fontWeight: FontWeight.w500,
  //                                     height: 0,
  //                                   ),
  //                                 ),
  //                               ),
  //                             )
  //                           ],
  //                         ),
  //                         SizedBox(
  //                           height: 15,
  //                         ),
  //                         if (provider.addedItems.length > 1) horizontalLine()
  //                       ],
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           height: 20,
  //         ),
  //         Container(
  //           // color: Colors.transparent.withOpacity(0.3),
  //           child: Column(
  //             children: [
  //               InkWell(
  //                 onTap: () async {
  //                   setState(() {
  //                     saveListToPrefs(productProvider.addedItems);
  //                     _navigateToDetailsScreen2(
  //                       context,
  //                     );
  //                   });
  //                 },
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(left: 18.0, right: 18),
  //                   child: Container(
  //                     width: 388,
  //                     height: 56,
  //                     decoration: ShapeDecoration(
  //                       color: Color(0xFF3868CE),
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(999),
  //                       ),
  //                       shadows: [
  //                         BoxShadow(
  //                           color: Color(0x59293072),
  //                           blurRadius: 22,
  //                           offset: Offset(2, 7),
  //                           spreadRadius: -2,
  //                         )
  //                       ],
  //                     ),
  //                     child: Center(
  //                       child: Text(
  //                         'Payment',
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                           color: Colors.white,
  //                           fontSize: 16,
  //                           fontFamily: 'Mulish',
  //                           fontWeight: FontWeight.w700,
  //                           height: 0,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 10,
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 18.0, right: 18.0),
  //                 child: InkWell(
  //                   onTap: () {
  //                     // setState(() {
  //                     //   // for (var item in productProvider.items) {
  //                     //   //   item.quantity = 1;
  //                     //   // }
  //                     //
  //                     // });
  //                     productProvider.addedItems.length = 0;
  //                     print(productProvider.addedItems.length);
  //                   },
  //                   child: DottedBorder(
  //                     color: Color(0xFFEE6161),
  //                     // Border color
  //                     strokeWidth: 2,
  //                     // Border width
  //                     borderType: BorderType.RRect,
  //                     // Rounded rectangle border
  //                     radius: Radius.circular(999),
  //                     // Border radius
  //                     // padding: EdgeInsets.all(5), // Padding around the border
  //                     child: Container(
  //                       width: 396, // Container width
  //                       height: 50, // Container height
  //                       decoration: BoxDecoration(
  //                         color: Color(0xFFFDE3E5),
  //                         borderRadius:
  //                         BorderRadius.circular(999), // Border radius
  //                       ), // Background color
  //                       child: Center(
  //                           child: Text(
  //                             'Reset',
  //                             textAlign: TextAlign.center,
  //                             style: TextStyle(
  //                               color: Color(0xFFEE6161),
  //                               fontSize: 16,
  //                               fontFamily: 'Mulish',
  //                               fontWeight: FontWeight.w700,
  //                               height: 0,
  //                             ),
  //                           )),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 8,
  //               ),
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  void decreaseQuantity(ProductList product, int index) {
    productProvider.decreaseQuantity(index);
    productProvider.controllers[index].text =
        productProvider.storedItems[index].quantity.toString();
  }

  void increaseQuantity(ProductList product, int index) {
    productProvider.increaseQuantity(index);
    productProvider.controllers[index].text =
        productProvider.storedItems[index].quantity.toString();
  }

  void updateTotalPrice(ProductList selectedItem, int index) {
    productProvider.updateTotalPrice(index);
  }


  @override
  void dispose() {
    productProvider.searchController!.dispose();
    _searchFocusNode.dispose(); // Dispose the focus node to avoid memory leaks


    // _controllers1.dispose();

    for (var controller in productProvider.controllers) {
      controller!.dispose();
    }

    super.dispose();
  }

  // Widget searchItem(NewSellProvider filteredItems) {
  //   return GestureDetector(
  //     onTap: () {
  //       // setState(() {
  //       //   searchItemVisible=false;
  //       //
  //       // });
  //       filteredItems.toggleSearchItemVisibility();
  //     },
  //     child: Visibility(
  //       visible: filteredItems.searchItemVisible,
  //       child: Container(
  //         width: 388,
  //         height: filteredItems.filteredItems.length * 50.0,
  //         // Set a fixed value based on your item's height
  //         decoration: ShapeDecoration(
  //           color: Colors.white,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(5),
  //           ),
  //           shadows: [
  //             BoxShadow(
  //               color: Color(0x59293072),
  //               blurRadius: 22,
  //               offset: Offset(2, 7),
  //               spreadRadius: -2,
  //             ),
  //           ],
  //         ),
  //         child: ListView.builder(
  //           itemCount: filteredItems.filteredItems.length,
  //
  //           // The number of items in your list
  //           itemBuilder: (BuildContext context, int index) {
  //             // This is a callback function that builds each item in the list
  //             // You can use the 'index' to access the data for the current item
  //             ProductList currentItem = filteredItems.filteredItems.length > 0
  //                 ? filteredItems.filteredItems[index]
  //                 : filteredItems.items[index];
  //
  //             // Check if the item's name contains the search query
  //             // Check if the item's name contains the search query
  //             String name = currentItem.title;
  //             // String role = currentItem.role;
  //
  //             List<TextSpan> textSpans =
  //             highlightText(name, filteredItems.searchQuery);
  //             return Container(
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Column(
  //                   children: [
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Row(
  //                           children: [
  //                             // Container(
  //                             //   width: 43,
  //                             //   height: 43,
  //                             //   decoration: ShapeDecoration(
  //                             //     image: DecorationImage(
  //                             //       image: AssetImage(filteredItems[index]
  //                             //           .image),
  //                             //       fit: BoxFit.fill,
  //                             //     ),
  //                             //     shape: OvalBorder(),
  //                             //   ),
  //                             // ),
  //                             Padding(
  //                               padding: const EdgeInsets.all(8.0),
  //                               child: Column(
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   // Text(
  //                                   //   filteredItems.filteredItems[index].title,
  //                                   //   style: TextStyle(
  //                                   //     color: Color(0xFF282828),
  //                                   //     fontSize: 14,
  //                                   //     fontFamily: 'Mulish',
  //                                   //     fontWeight: FontWeight.w500,
  //                                   //     height: 0,
  //                                   //   ),
  //                                   // ),
  //                                   RichText(
  //                                     text: TextSpan(
  //                                       style: TextStyle(
  //                                         fontSize: 14,
  //                                         fontFamily: 'Mulish',
  //                                         fontWeight: FontWeight.w500,
  //                                         color: Color(0xFF282828),
  //                                       ),
  //                                       children: textSpans,
  //                                     ),
  //                                   ),
  //                                   Text(
  //                                     filteredItems
  //                                         .filteredItems[index].stknmbr,
  //                                     style: TextStyle(
  //                                       color: Color(0xFF7A7A7A),
  //                                       fontSize: 12,
  //                                       fontFamily: 'Mulish',
  //                                       fontWeight: FontWeight.w500,
  //                                       height: 0,
  //                                     ),
  //                                   ),
  //                                   stkItm1(
  //                                       '(In Stk: ${filteredItems.filteredItems[index].stknmbr.toString()})',
  //                                       Color(0xFF2E7229),
  //                                       12),
  //                                 ],
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Row(
  //                             children: [
  //                               Column(
  //                                 children: [
  //                                   // Text(
  //                                   //   "$items[index].amount",
  //                                   //   textAlign: TextAlign.right,
  //                                   //   style: TextStyle(
  //                                   //     color: Color(0xFFEE6161),
  //                                   //     fontSize: 14,
  //                                   //     fontFamily: 'Mulish',
  //                                   //     fontWeight: FontWeight.w600,
  //                                   //     height: 0,
  //                                   //   ),
  //                                   // ),
  //                                   // Padding(
  //                                   //   padding:
  //                                   //   EdgeInsets.only(left: 35.0),
  //                                   //   child: Text(
  //                                   //     items[index].title,
  //                                   //     style: TextStyle(
  //                                   //       color: Color(0xFF7A7A7A),
  //                                   //       fontSize: 12,
  //                                   //       fontFamily: 'Mulish',
  //                                   //       fontWeight: FontWeight.w500,
  //                                   //       height: 0,
  //                                   //     ),
  //                                   //   ),
  //                                   // )
  //                                 ],
  //                               ),
  //                               if (filteredItems
  //                                   .filteredItems[index].is_Added ==
  //                                   false)
  //                                 GestureDetector(
  //                                   onTap: () async{
  //
  //                                     await  productProvider.selectAndStoreItem(filteredItems.filteredItems[index]);
  //                                     productProvider.someFunction();
  //
  //                                     print("stored Item");
  //                                     print(productProvider.storedItems.length);
  //
  //
  //
  //                                     productProvider.storedItems = await productProvider.getStoredItems();
  //                                     print("Stored item Add");
  //                                     print(productProvider.storedItems.length);
  //                                     if(productProvider.storedItems.isNotEmpty)
  //                                     print(productProvider.storedItems[0].title);
  //                                     print(productProvider.storedItems[productProvider.storedItems.length - 1].title);
  //
  //
  //                                     print(productProvider.addedItems.length);
  //                                     filteredItems.updateIsAdded(index);
  //                                   },
  //                                   child: Container(
  //                                     width: 66,
  //                                     height: 34,
  //                                     decoration: ShapeDecoration(
  //                                       color: Color(0xFF3868CE),
  //                                       shape: RoundedRectangleBorder(
  //                                         side: BorderSide(
  //                                             width: 1,
  //                                             color: Color(0xFF3868CE)),
  //                                         borderRadius:
  //                                         BorderRadius.circular(5),
  //                                       ),
  //                                     ),
  //                                     child: Center(
  //                                       child: Text(
  //                                         'Add',
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                           fontSize: 16,
  //                                           fontFamily: 'Mulish',
  //                                           fontWeight: FontWeight.w700,
  //                                           height: 0,
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 )
  //                               else
  //                                 GestureDetector(
  //                                   onTap: () {
  //                                     // setState(() {
  //                                     //   //productProvider.items[index].is_Added = false;
  //                                     //   filterIsAddedResults();
  //                                     // });
  //                                     productProvider.removeStoredItem(index);
  //                                     // productProvider.someFunction();
  //
  //                                     print("stored Item minus");
  //
  //                                     print(productProvider.storedItems.length);
  //
  //
  //                                     filteredItems.updateIsAdded(index);
  //                                   },
  //                                   child: Container(
  //                                     width: 66,
  //                                     height: 34,
  //                                     decoration: ShapeDecoration(
  //                                       color: Color(0xFF7A7A7A),
  //                                       shape: RoundedRectangleBorder(
  //                                         side: BorderSide(
  //                                             width: 1,
  //                                             color: Color(0xFF7A7A7A)),
  //                                         borderRadius:
  //                                         BorderRadius.circular(5),
  //                                       ),
  //                                     ),
  //                                     child: Center(
  //                                       child: Text(
  //                                         'Added',
  //                                         style: TextStyle(
  //                                           color: Colors.white,
  //                                           fontSize: 16,
  //                                           fontFamily: 'Mulish',
  //                                           fontWeight: FontWeight.w700,
  //                                           height: 0,
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 )
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                     // customDivider()
  //                     Divider()
  //                   ],
  //                 ),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }


  // List<TextSpan> highlightText(String text, String query) {
  //   List<TextSpan> spans = [];
  //
  //   // Handle the case when the query is empty
  //   if (query.isEmpty) {
  //     spans.add(TextSpan(text: text));
  //     return spans;
  //   }
  //
  //   // Perform case-insensitive search
  //   String lowerCaseText = text.toLowerCase();
  //   String lowerCaseQuery = query.toLowerCase();
  //
  //   int start = 0;
  //   while (start < text.length) {
  //     int matchIndex = lowerCaseText.indexOf(lowerCaseQuery, start);
  //     if (matchIndex == -1) {
  //       spans.add(TextSpan(text: text.substring(start)));
  //       break;
  //     }
  //
  //     // Add non-matching text
  //     if (matchIndex > start) {
  //       spans.add(TextSpan(text: text.substring(start, matchIndex)));
  //     }
  //
  //     // Add matching text with green color
  //     spans.add(TextSpan(
  //       text: text.substring(matchIndex, matchIndex + query.length),
  //       style: TextStyle(color: Colors.green),
  //     ));
  //
  //     start = matchIndex + query.length;
  //   }
  //
  //   return spans;
  // }




  // List<TextSpan> highlightText(String text, String query) {
  //   List<TextSpan> spans = [];
  //
  //   // Handle the case when the query is empty
  //   if (query.isEmpty) {
  //     spans.add(TextSpan(text: text));
  //     return spans;
  //   }
  //
  //   // Perform case-insensitive search
  //   String lowerCaseText = text.toLowerCase();
  //   String lowerCaseQuery = query.toLowerCase();
  //
  //   int start = 0;
  //   while (start < text.length) {
  //     int matchIndex = lowerCaseText.indexOf(lowerCaseQuery, start);
  //     if (matchIndex == -1) {
  //       spans.add(TextSpan(text: text.substring(start)));
  //       break;
  //     }
  //
  //     // Add non-matching text
  //     if (matchIndex > start) {
  //       spans.add(TextSpan(text: text.substring(start, matchIndex)));
  //     }
  //
  //     // Add matching text with green color
  //     spans.add(TextSpan(
  //       text: text.substring(matchIndex, matchIndex + query.length),
  //       style: TextStyle(color: Colors.green),
  //     ));
  //
  //     start = matchIndex + query.length;
  //   }
  //
  //   return spans;
  // }









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
            // Navigator.pop(context);
            productProvider.filteredItems.clear();
            Navigator.pushReplacement(

                context,
                MaterialPageRoute(
                builder: (context) => Dashboard(),
            ));
            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => NewSale2()),
            //       (route) => false, // Remove all existing routes
            // );
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
