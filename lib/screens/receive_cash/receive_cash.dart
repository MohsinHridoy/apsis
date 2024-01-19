import 'package:flutter/material.dart';
import 'package:untitled/screens/alert/alert.dart';
import 'package:untitled/screens/customerlist/customer_list.dart';
import 'package:untitled/screens/customersalehistory/customer_sale_history.dart';
import 'package:untitled/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/stck_detls_lst.dart';

class ReceiveCash extends StatefulWidget {
  const ReceiveCash({super.key});

  @override
  State<ReceiveCash> createState() => _ReceiveCashState();
}

class _ReceiveCashState extends State<ReceiveCash> {
  LinearGradient gradient1 = LinearGradient(
    colors: [Colors.indigoAccent, Colors.blueGrey],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF2F73FE), Color(0x00D0DFEB)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // left: 124,
              top: 42,
              left: 10,
              child: appBar(),
            ),
            Positioned(top: 120, left: 10.5, right: 10.5, child: customerDetails()),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.3,
              left: 3,
              right: 3,
              child: Container(
                decoration: ShapeDecoration(
                  // color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(15),
                      ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Column(
                    children: [
                      Container(
                        width: 396,
                        height: 185,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0,right: 14,top: 8,bottom: 8),
                              child: Container(
                                width: 369,
                                height: 37,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFEE6161),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0,right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total',
                                        style: TextStyle(
                                          color: Color(0xFFFEFEFE),
                                          fontSize: 16,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        '৳ 16,547.00',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 369,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0,right: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF88CADA)),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
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
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22.0,right: 24),
                              child: Container(
                                width: 369,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Credit',
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 16,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
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
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomerList(),
                            ),
                          );
                        },
                        child: paymentButton(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentButton(){
    return Container(
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
          'Take payment & Print',
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
    );
  }
  Widget customerDetails() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: Column(
        children: [
          // SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.00),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 138,
              decoration: BoxDecoration(
                // color: Colors.red,
                color: Color(0xFFFEFEFE),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    Container(
                      // width: 0.15 *
                      //     MediaQuery.of(context)
                      //         .size
                      //         .width, // 20% width
                      // height: 138,
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/profile_image.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 5, // 50% width
                      child: Container(
                        height: 138,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 22.0, bottom: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Miah',
                                style: TextStyle(
                                  color: Color(0xFF282828),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'Wholesaler',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 12,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              // SingleChildScrollView(
                              //   scrollDirection: Axis.vertical,
                              //   child: Text(
                              //     '85, Near Devraya Sports Club, Inimoli, Building No. 51, Mahalgaon, South Goa, Goa, Pincode-420253',
                              //     style: TextStyle(
                              //       color: Color(0xFF7A7A7A),
                              //       fontSize: 12,
                              //       fontFamily: 'Mulish',
                              //       fontWeight: FontWeight.w400,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 70,
                                width: 150,
                                child: Text(
                                  '85, Near Devraya Sports Club, Inimoli, Building No. 51, Mahalgaon, South Goa, Goa, Pincode-420253',
                                  style: TextStyle(
                                    color: Color(0xFF7A7A7A),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    height: 0,
                                    fontWeight: FontWeight.w400,
                                  ),

                                  overflow: TextOverflow.ellipsis,
                                  maxLines:
                                  4, // Adjust the number of lines based on your needs
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4, // 30% width
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25.0, left: 10.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchPhoneDialer('tel:+918888888888');
                              },
                              child: Row(
                                children: [
                                  // Icon(Icons.call, size: 11),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1.0, right: 4.0),
                                    child: Image.asset(
                                        "assets/icons/call_icon.png",
                                        width: 15,
                                        height: 15),
                                  ),
                                  Text(
                                    '01789455478',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF282828),
                                      fontSize: 14,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, top: 3, left: 2),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Alert(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 109,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDFF6FF),
                                    // color: Colors.red,
                                    border: Border.all(
                                        width: 0.50, color: Color(0xFF88CADA)),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      // Icon(Icons.sms_rounded, size: 11),
                                      Image.asset(
                                        "assets/icons/mail.png",
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Send alert',
                                        style: TextStyle(
                                          color: Color(0xFF282828),
                                          fontSize: 12,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                        child: Center(
                          child: Container(
                            width: 24,
                            height: 24,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.orange,
                                // Change this to the desired color (e.g., Color(0xFFFFD0BB))
                                BlendMode.srcATop,
                              ),
                              child:
                              Image.asset("assets/icons/personalcard1.png"),
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
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
                      width: MediaQuery.of(context).size.width * 0.13,
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
    );
  }

  _launchPhoneDialer(String phoneNumber) async {
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  Widget appBar() {
    return Container(
      // width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(width: 98),
            // Add a SizedBox for some space between icon and text
            Text(
              'Abdul Miah',
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
    );
  }
}
