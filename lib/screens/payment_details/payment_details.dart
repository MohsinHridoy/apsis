import 'package:flutter/material.dart';
import 'package:untitled/model/stck_detls_lst.dart';

class PaymentDetails extends StatefulWidget {
  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  final List<StckDtls> items = [
    StckDtls("Item 1", "Subtitle 1"),
    StckDtls("Item 2", "Subtitle 2"),
    StckDtls("Item 3", "Subtitle 3"),
    // Add more data items as needed
  ];
  LinearGradient gradient = LinearGradient(
    colors: [Colors.indigoAccent, Colors.white],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigoAccent,
            title: Text("payment"),
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios)),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: gradient,
          ),

            child: Container(
              padding: EdgeInsets.all(16.0),

                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ContainerWithBorders(),
                      SizedBox(height: 15),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.91,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
                                  color: Colors.indigo[900],

                                ),
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'ঔষধ এর নাম',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Text(
                                      'পরিমান',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Text(
                                      'মল্ল',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 300,
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
                                                    // decoration: BoxDecoration(
                                                    //   border: Border.all(
                                                    //     color: Colors.black,
                                                    //     // Border color for text
                                                    //     width: 1.0, // Border width for text
                                                    //   ),
                                                    // ),
                                                    padding: EdgeInsets.all(8.0),
                                                    // Padding for text
                                                    child: Text(
                                                      "1",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 90,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.white, // Border color
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.indigo,
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
                                      'Text 3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text('joma',),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 90,
                                    height: 35,
                                    decoration: BoxDecoration(
                                    color: Colors.cyan[50],
                                      border: Border.all(
                                        color: Colors.blue, // Border color
                                        width: 1.0, // Border width
                                      ),
                                      // borderRadius: BorderRadius.circular(10.0), // Border radius
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "5",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          Text(
                                            "Subtitle",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text('joma',),
                                ),
                                Container(
                                  width: 90,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[50],
                                    border: Border.all(
                                      color: Colors.blue, // Border color
                                      width: 1.0, // Border width
                                    ),
                                    // borderRadius: BorderRadius.circular(10.0), // Border radius
                                  ),
                                  child: Center(
                                    child:
                                        Text(
                                          "Subtitle",
                                          style: TextStyle(fontSize: 14),
                                        ),

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
                                "Subtitle",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      )

// Add more widgets as needed
                    ],
                  ),
                ),

            ),
        ),
      ),
    );
  }
}
class ContainerWithBorders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed


        boxShadow: [
          BoxShadow(

            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("মেমো আইডি",style: TextStyle(),),
          )),
          TextInputField(t:"*",t1:"কাস্টমারের নাম",icon:Icons.people),
          SizedBox(height: 16.0), // Add spacing between text input fields
          TextInputField(t:"*",t1:"ফোন নাম্বার"),
          SizedBox(height: 16.0),
          TextInputField(t:"*",t1:"ঠিকানা"),
        ],
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  final String? t;

  final String t1;
  final IconData? icon;
  TextInputField({Key? key, this.t,required this.t1,  this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.cyan[50], // Border color

          border: Border.all(
            color: Colors.cyan, // Border color
            width: 1.0, // Border width
          ),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Text(
                  "$t",
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(width: 8.0), // Add spacing between asterisk and TextFormField
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '$t1',
                      border: InputBorder.none,
                      // Remove default border
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                ),

                Icon(
                  icon, // Replace with the desired icon (you can explore other icons provided by the Icons class)
                  size: 18.0, // Set the size of the icon
                  color: Colors.grey, // Set the color of the icon
                )

              ],
            ),
          ),
        )
    );
  }
}