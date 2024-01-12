import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/model/mystock/mystock.dart';
import 'package:untitled/screens/viewstock/view_stock.dart';

class MyStock extends StatefulWidget {
  const MyStock({super.key});

  @override
  State<MyStock> createState() => _MyStockState();
}

class _MyStockState extends State<MyStock> {
  List<MyStockData11> items = [
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:1,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:22,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Prasn Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:321,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Tomato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:32,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:4444,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Vegitable Cracker",productId:'AASaDc',quantity:1,stknmbr:'610',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Beef Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),
    MyStockData11(title:"Potato Cracker",productId:'AASaDc',quantity:1,stknmbr:'60',unitprice:15,image: "assets/Crackers_and_Oreo.jpg"),

    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set the desired status bar color
      // statusBarColor: Color(0xCF3E6BCB), // Set the desired status bar color
    ));
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF2F73FE), Color(0x00D0DFEB)],
            ),
          ),
        child: Stack(
          children: [
            // Positioned(
            //   left: 0,
            //   top: 0,
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     height: 366,
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment(0.06, -1.00),
            //         end: Alignment(-0.06, 1),
            //         colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              // left: 124,
              top: 42,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // Center the children horizontally
                    children: [
                      GestureDetector(
                        onTap: (){
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
                        'My Stock',
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
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              right: 10,
              left: 10,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 388,
                        height: 54,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 6.0, top: 6.0, bottom: 6.0),
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
                                  decoration: InputDecoration(
                                    hintText: 'Search customer',
                                    // Add your hint text here
                                    hintStyle: TextStyle(
                                      color: Color(0xFF7A7A7A),
                                      fontSize: 14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                    ),
                                    border: InputBorder
                                        .none, // Removes the underline
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0,
                                    right: 8.0,
                                    top: 7.0,
                                    bottom: 8.0),
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/search_icon.png'),
                                      // Replace 'your_image.png' with the actual path to your asset image
                                      fit: BoxFit
                                          .cover, // Adjust the fit as needed
                                    ),
                                    // You can also add other decoration properties here, such as borderRadius, border, color, etc.
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 15,
              top: 190,
              right: 15,
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: GridView.builder(
                      // shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns
                        crossAxisSpacing: 7.0, // Spacing between columns
                        mainAxisSpacing: 12.0, // Spacing between rows
                        childAspectRatio: 0.69,
                      ),
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        // Return a widget for each item in yourDataList
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ViewStock(
                                  product: items[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 107,
                            height: 152,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF4FAFF),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.09, color: Color(0xFF88CADA)),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // Align children to the left
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    width: 93,
                                    height: 83,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            items[index].image),
                                        // image: NetworkImage("https://via.placeholder.com/93x83"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(2)),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  child: text("৳ ${items[index].title}", Color(0xFF282828), 12,
                                      FontWeight.w500),
                                ),
                                text("৳ ${items[index].quantity}", Color(0xFF2E7229), 12,
                                    FontWeight.w300),
                                text("৳ ${items[index].unitprice}", Color(0xFF3868CE), 12, FontWeight.w300)
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget text(String txt, Color color, double size, FontWeight weight) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, top: 3),
    child: Text(
      txt,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'Mulish',
        fontWeight: weight,
        height: 0,
      ),
    ),
  );
}
