import 'package:flutter/material.dart';
import 'package:untitled/screens/receive_cash/receive_cash.dart';
import 'package:untitled/widgets/widgets.dart';

class CustomerList2 extends StatefulWidget {
  const CustomerList2({super.key});

  @override
  State<CustomerList2> createState() => _CustomerList2State();
}

class _CustomerList2State extends State<CustomerList2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 428,
        height: 926,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFF6F6F6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 428,
                height: 330,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.06, -1.00),
                    end: Alignment(-0.06, 1),
                    colors: [Color(0xFF3563C2), Color(0xFFA4D9D0)],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 42,
              right: 0,
              left: 0,
              child: appBar(context, 'Abdul Miah', false),
            ),

            Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Container(
                  width: 428,
                  height: 550,

                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.00),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 138,
                          decoration: BoxDecoration(
                            color: Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 0.15 *
                                      MediaQuery.of(context)
                                          .size
                                          .width, // 20% width
                                  height: 138,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/43x43"),
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
                                      padding: const EdgeInsets.only(
                                          top: 10.0, bottom: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          const SizedBox(height: 2),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Text(
                                              '85, Near Devraya Sports Club, Inimoli, Building No. 51, Mahalgaon, South Goa, Goa, Pincode-420253',
                                              style: TextStyle(
                                                color: Color(0xFF7A7A7A),
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4, // 30% width
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.call, size: 11),
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
                                        Padding(
                                          padding: const EdgeInsets.only(right: 12.0,top:3,left: 1),
                                          child: Container(
                                            width: 109,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFDFF6FF),
                                              border: Border.all(
                                                  width: 0.50,
                                                  color: Color(0xFF88CADA)),
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                Icon(Icons.sms_rounded, size: 11),
                                                SizedBox(width: 3),
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
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
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
            Positioned(
              top: 330,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Container(
                    width: 396,
                    height: 647,
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView.builder(
                      itemCount: 17, // The number of items in your list
                      itemBuilder: (BuildContext context, int index) {
                        // This is a callback function that builds each item in the list
                        // You can use the 'index' to access the data for the current item
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '10-11-2023',
                                      style: TextStyle(
                                        color: Color(0xFF282828),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                '৳ 16,547.00',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Color(0xFFEE6161),
                                                  fontSize: 14,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 35.0),
                                                child: Text(
                                                  'Credit',
                                                  style: TextStyle(
                                                    color: Color(0xFF7A7A7A),
                                                    fontSize: 12,
                                                    fontFamily: 'Mulish',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                    "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
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
            Positioned(
              bottom: 40,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReceiveCash(),
                    ),
                  );
                },
                child: Container(
                  width: 195,
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
                      '+ Receive Cash',
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
            )


          ],
        ),
      ),
    );
  }
}
