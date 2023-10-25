import 'package:flutter/material.dart';
import 'package:untitled/model/stck_detls_lst.dart';

class MyStock1 extends StatefulWidget {
  const MyStock1({super.key});

  @override
  State<MyStock1> createState() => _MyStock1State();
}

class _MyStock1State extends State<MyStock1> {
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
    LinearGradient gradient = LinearGradient(
      colors: [Colors.blue, Colors.black12],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("আমার স্টক"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: isEditing
                    ? TextField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          labelText: "Enter text",
                        ),
                      )
                    : Row(
                        children: [
                          Expanded(
                            child: Text(
                              labelText,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              setState(() {
                                isEditing = true;
                              });
                            },
                          ),
                        ],
                      ),
              ),
            ),
            ContainerWithScreenSize(),
          ],
        ),
      ),
    );
  }
}

class BlueGradientContainer extends StatefulWidget {
  @override
  State<BlueGradientContainer> createState() => _BlueGradientContainerState();
}

class _BlueGradientContainerState extends State<BlueGradientContainer> {
  final List<StckDtls> items = [
    StckDtls("Item 1", "Subtitle 1"),
    StckDtls("Item 2", "Subtitle 2"),
    StckDtls("Item 3", "Subtitle 3"),
    StckDtls("Item 1", "Subtitle 1"),
    StckDtls("Item 2", "Subtitle 2"),
    StckDtls("Item 3", "Subtitle 3"),
    // Add more data items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("stock",style: TextStyle(color: Colors.white),),
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(

          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Container(
                width: 400.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(10.0), // Set the border radius
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14.0),
                        child: Text(
                          'ওসুদ খুজুন',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 14.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(5)),
                        ),
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              "${items[index].title}",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Text(
                                              "${items[index].subtitle}",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              "${items[index].subtitle}",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "(In Stock 2)",
                                        style: TextStyle(
                                            color: Colors.greenAccent),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              "${items[index].subtitle}",
                                              style: TextStyle(
                                                  color: Colors.greenAccent,
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              "${items[index].subtitle}",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "- - - - - - - - - - - - - - - - - -- -- - - - - - - - - - - - - - - -",
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width /
                          16, // One-third of the width

                      decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius:
                        //     BorderRadius.vertical(top: Radius.circular(5)),
                      ),
                      child: ListView.builder(
                        itemCount: 24, // Number of items
                        itemBuilder: (BuildContext context, int index) {
                          final letters = [
                            '#',
                            'b',
                            'c',
                            'd',
                            'a',
                            'b',
                            'c',
                            'd',
                            'a',
                            'b',
                            'c',
                            'd',
                            '#',
                            'b',
                            'c',
                            'd',
                            'a',
                            'b',
                            'c',
                            'd',
                            'a',
                            'b',
                            'c',
                            'd',
                          ];
                          final replacements = [
                            'x',
                            'y',
                            'z',
                            'w'
                          ]; // Replace a, b, c, d with x, y, z, w if needed
                          return
                            Text(letters[index],style: TextStyle(fontSize: 19,color: Colors.grey),);  // Use replacements[index] instead of letters[index] if needed

                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
              height: MediaQuery.of(context).size.height * 0.7,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.all(16.0),
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
                                            "${items[index].title}",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "${items[index].subtitle}",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          Text(
                                            "${items[index].subtitle}",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "(In Stock 2)",
                                      style:
                                          TextStyle(color: Colors.greenAccent),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "${items[index].subtitle}",
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "${items[index].subtitle}",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "- - - - - - - - - - - - - - - - - - - - - - - - - - - -",
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: 5,
                      child: ListView.builder(
                        itemCount: 12, // Number of items
                        itemBuilder: (BuildContext context, int index) {
                          final letters = [
                            '#',
                            'b',
                            'c',
                            'd',
                            'a',
                            'b',
                            'c',
                            'd',
                            'a',
                            'b',
                            'c',
                            'd',
                          ];
                          final replacements = [
                            'x',
                            'y',
                            'z',
                            'w'
                          ]; // Replace a, b, c, d with x, y, z, w if needed
                          return ListTile(
                            title: Text(letters[
                                index]), // Use replacements[index] instead of letters[index] if needed
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
