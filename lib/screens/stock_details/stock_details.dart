import 'package:flutter/material.dart';

import '../../model/stck_detls_lst.dart';

class StockDetails extends StatefulWidget {
  const StockDetails({super.key});

  @override
  State<StockDetails> createState() => _StockDetailsState();
}

class _StockDetailsState extends State<StockDetails> {
  bool isEditing = false;
  TextEditingController textEditingController = TextEditingController();
  String labelText = "Click the icon to edit";

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "stock",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
          
            ContainerWithScreenSize(),
            Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    // Add your button's onPressed action here
                    print("Button Pressed");
                  },
                  child: Center(
                    child: Text(
                      "Custom Button",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ContainerWithScreenSize extends StatelessWidget {
  final List<StckDtls> items = [
    StckDtls("Item 1", "Subtitle 1"),
    StckDtls("Item 2", "Subtitle 2"),
    StckDtls("Item 3", "Subtitle 3"),
    // Add more data items as needed
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - 205;
    LinearGradient gradient = LinearGradient(
      colors: [Colors.blue, Colors.black12],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    return Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.91,
              height: MediaQuery.of(context).size.height * 0.6,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Colors.deepPurple,
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Text 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Text 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Text 3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.grey),
                          //   borderRadius: BorderRadius.circular(8.0),
                          // ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          " ${items[index].title}",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "${items[index].subtitle}",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 35,
                                        color: Colors.black,
                                        // Background color for '-' icon
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.remove,
                                            color: Colors
                                                .white, // Color of '-' icon
                                          ),
                                          onPressed: () {
                                            // Add onPressed action for '-' icon if needed
                                          },
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            // Border color for text
                                            width: 1.0, // Border width for text
                                          ),
                                        ),
                                        padding: EdgeInsets.all(8.0),
                                        // Padding for text
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 35,

                                        color: Colors.black,
                                        // Background color for '-' icon
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.remove,
                                            color: Colors
                                                .white, // Color of '-' icon
                                          ),
                                          onPressed: () {
                                            // Add onPressed action for '-' icon if needed
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 90,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blue, // Border color
                                        width: 1.0, // Border width
                                      ),
                                      // borderRadius: BorderRadius.circular(10.0), // Border radius
                                    ),
                                    child: Text(
                                      "Subtitle: ${items[index].subtitle}",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                  "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
