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
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,// No elevation (no shadow)
        backgroundColor: Color(0xFF3A67C4), // Background color
        // backgroundColor: Color(0xFF3563C2),
        // Background color
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(gradient: gradient),
        // ),
        title:  Text(
          'Abdul Miah',
          style: TextStyle(
            color: Color(0xFFFEFEFE),
            // Text color
            fontSize: 20,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back_ios, // Back button icon
            color: Colors.white, // Icon color
          ),
        ),
      ),
      body: Stack(
        children: [
// Bottom container (First half)
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height / 1.6,
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
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 10.00),
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
                                child: Row(
                                  children: [
                                    Column(
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.call,size: 11,),
                                              Text(
                                                '01789455478',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Color(0xFF282828),
                                                  fontSize: 14,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              width: 109,
                                              height: 22,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFDFF6FF),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF88CADA)),
                                                  borderRadius: BorderRadius.circular(2),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.sms_rounded,size: 11,),
                                                  SizedBox(width: 5,),
                                                  Text(
                                                    'Send alert',
                                                    style: TextStyle(
                                                      color: Color(0xFF282828),
                                                      fontSize: 12,
                                                      fontFamily: 'Mulish',
                                                      fontWeight: FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
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
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0,right: 11.0),
                      child: Container(
                        width: 388,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 38,
                                height: 34,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFD0BB),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Icon(Icons.abc),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Total credit amount ',
                                  style: TextStyle(
                                    color: Color(0xFF282828),
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                '৳ 16,547.00',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFFEE6161),
                                  fontSize: 16,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
// Top container (Second half)
          Positioned(
            top: MediaQuery.of(context).size.height / 3.7,
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


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 396,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                          borderRadius: BorderRadius.circular(5),
                        ),
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
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 396,
                      height: 185,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child:
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Center(
                           child: Text(
                              'We would like to bring to your attention that there is an outstanding credit of BDT 16,547 in your account with our store. We kindly request you to settle this amount at your earliest convenience.\nIf you have any questions or concerns regarding this matter, please do not hesitate to contact our customer service team. We appreciate your prompt attention to this matter.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                         ),
                       ),

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
                        'Send alert',
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
