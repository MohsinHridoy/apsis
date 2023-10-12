import 'package:flutter/material.dart';
import 'package:untitled/model/salehistory/salehistory.dart';

class SaleHistory extends StatefulWidget {
  const SaleHistory({super.key});

  @override
  State<SaleHistory> createState() => _SaleHistoryState();
}

class _SaleHistoryState extends State<SaleHistory> {
  final List<SaleHistoryDetails> items = [
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),
    SaleHistoryDetails("Cola", "250 ml","19-10-2022","#100 taka","10 pcs"),

    // Add more data items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
// Bottom container (First half)
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height / 2.7,
              child: Container(
                width: 428,
                height: 374,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.06, -1.00),
                    end: Alignment(-0.06, 1),
                    colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
                  ),
                ),
                child: Column(
                  children: [
                  Container(
                  height: 56.0, // Adjust the height as needed
                  color: Color(0xFF4371D0), // Background color of the app bar
                  // elevation: 4.0, // Shadow under the app bar
                  child: Center(
                    child: Text(
                      'Sale History',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 20.0, // Text size
                        fontWeight: FontWeight.bold, // Text weight
                      ),
                    ),
                  ),
                ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.00),
                      child: Container(
                        width: 388,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 38,
                              height: 34,
                              decoration: ShapeDecoration(
                                color: Color(0x3300AAF0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child:Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                  Text('d')
                                ]),
                              ) ,
                            ),
                            Text(
                              'Date Range',
                              style: TextStyle(
                                color: Color(0xFF282828),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 98.0),
                              child: Text(
                                'All time',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined
                            )
                          ],
                        ),

                      ),
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.00),
                      child: Container(
                        width: 388,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 38,
                              height: 34,
                              decoration: ShapeDecoration(
                                color: Color(0x3300AAF0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child:Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                  Text('d')
                                ]),
                              ) ,
                            ),
                            Text(
                              'Select product',
                              style: TextStyle(
                                color: Color(0xFF282828),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 98.0),
                              child: Text(
                                'All products',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Icon(
                                Icons.arrow_drop_down_outlined
                            )
                          ],
                        ),

                      ),
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.00),
                      child: Container(
                        width: 388,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 38,
                              height: 34,
                              decoration: ShapeDecoration(
                                color: Color(0x3300AAF0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child:Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                  Text('d')
                                ]),
                              ) ,
                            ),
                            Text(
                              '01789455478',
                              style: TextStyle(
                                color: Color(0xFF282828),
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              )
          ),
// Top container (Second half)
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: ShapeDecoration(
                color: Color(0xFFF6F6F6),
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(15),
                ),


              ),
              child:  Container(
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
                                      "${items[index].quantity}",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      "${items[index].unit}",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "${items[index].unitprice}",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "${items[index].quantity}",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "- - - - - - - - - - - - - - - - - - - - - - - - - -  - -- -- - - - - - - - - - - - - - - -",
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

            ),
          ),
// Overlay container

        ],
      ),
    );
  }
}
