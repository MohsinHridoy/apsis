import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 354,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.06, -1.00),
                    end: Alignment(-0.06, 1),
                    colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.00),
                      child: Container(
                        width: 388,
                        height: 128,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Container(
                          width: 249,
                          height: 90,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 43,
                                height: 43,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/43x43"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Abdul Miah',
                                                  style: TextStyle(
                                                    color: Color(0xFF282828),
                                                    fontSize: 14,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Wholesaler',
                                                  style: TextStyle(
                                                    color: Color(0xFF7A7A7A),
                                                    fontSize: 12,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '85, Near Devraya Sports Club, \nInimoli, Building No. 51, Mahalgaon, \nSouth Goa, Goa, Pincode-420253',
                                                  style: TextStyle(
                                                    color: Color(0xFF7A7A7A),
                                                    fontSize: 12,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
              child: Column(
                children: [
                  SizedBox(height: 10,),



                  Container(
                    width: 396,
                    height: 185,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),

                    child: Column(
                      children: [
                        Container(
                          width: 369,
                          height: 37,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEE6161),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 369,
                          height: 37,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),

                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cash',
                                  style: TextStyle(
                                    color: Color(0xFF282828),
                                    fontSize: 16,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                Container(
                                  width: 152,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '৳',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 16,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        '1000.0',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 16,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 369,
                          height: 37,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),

                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cash',
                                  style: TextStyle(
                                    color: Color(0xFF282828),
                                    fontSize: 16,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  '৳ 570.0',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFFEE6161),
                                    fontSize: 16,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),

                  Container(
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
                        'Take payment and print',
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
                  )
                ],
              ),
            ),
          ),
// Overlay container

        ],
      ),
    );
  }
}
