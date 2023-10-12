import 'package:flutter/material.dart';


class AddNewCustomer extends StatefulWidget {
  const AddNewCustomer({super.key});

  @override
  State<AddNewCustomer> createState() => _AddNewCustomerState();
}

class _AddNewCustomerState extends State<AddNewCustomer> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                height: 279,
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
              left: 124,
              top: 62,
              child: Text(
                'Add new customer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFEFEFE),
                  fontSize: 20,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 62,
              child: Container(
                width: 24,
                height: 24,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: Stack(children: [

                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 625,
              child: Container(
                width: 388,
                height: 56,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
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
                      ),
                    ),
                    Positioned(
                      left: 68.47,
                      top: 18,
                      child: SizedBox(
                        width: 252.81,
                        child: Text(
                          'Add new customer',
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
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 133,
              child: Container(
                width: 388,
                height: 332,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 388,
                        height: 332,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 23,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 99,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 175,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 251,
                      child: Container(
                        width: 354,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 41,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFEE6161),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Customer name',
                              style: TextStyle(
                                color: Color(0xFF939598),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 117,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFEE6161),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Phone No.',
                              style: TextStyle(
                                color: Color(0xFF939598),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 193,
                      child: Text(
                        'Address',
                        style: TextStyle(
                          color: Color(0xFF939598),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 269,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Color(0xFFEE6161),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: 'Credit amount',
                              style: TextStyle(
                                color: Color(0xFF939598),
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 327,
                      top: 41,
                      child: Container(
                        width: 24,
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: Stack(children: [

                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 481,
              child: Container(
                width: 388,
                height: 96,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 388,
                        height: 96,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 158,
                      top: 25,
                      child: Container(
                        width: 73,
                        height: 47,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 25,
                              top: 0,
                              child: Container(
                                width: 24,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 29,
                              child: Text(
                                'Take photo',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
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
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 428,
                height: 44,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(width: 428, height: 30),
                    ),
                    Positioned(
                      left: 345,
                      top: 16,
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 14,
                              child: Stack(children: [

                                  ]),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              width: 16,
                              height: 14,
                              child: Stack(children: [

                                  ]),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              width: 25,
                              height: 12,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 2,
                                    top: 2,
                                    child: Container(
                                      width: 19,
                                      height: 8,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 351,
                      top: 8,
                      child: Container(width: 6, height: 6),
                    ),
                    Positioned(
                      left: 21,
                      top: 12,
                      child: Container(
                        width: 54,
                        height: 21,
                        padding: const EdgeInsets.only(top: 3, left: 11, right: 10, bottom: 3),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 33,
                              height: 15,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                ],
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
    );
  }
}
