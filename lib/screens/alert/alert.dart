import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  TextEditingController textEditingController =
  TextEditingController(text: '''
    We would like to bring to your attention that there is an outstanding credit of BDT 16,547 in your account with our store. We kindly request you to settle this amount at your earliest convenience.
    If you have any questions or concerns regarding this matter, please do not hesitate to contact our customer service team. 
    We appreciate your prompt attention to this matter.
  ''');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Container(
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
              ),
            ),
            Positioned(top: 90, left: 0, right: 0, child: customerDetails()),



            Positioned(
              top: 290,
              left: 8,
              right: 8,
              bottom: 0,
              child: Container(
                // decoration: ShapeDecoration(
                //   // color: Color(0xFFF6F6F6),
                //   shape: RoundedRectangleBorder(
                //     // borderRadius: BorderRadius.circular(15),
                //   ),
                //
                // ),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:     Container(
                                  width: 38,
                                  height: 34,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3300AAF0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 24,
                                      height:24,
                                      child: ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Color(0x3300AAF0),
                                          // Change this to the desired color (e.g., Color(0xFFFFD0BB))
                                          BlendMode.srcATop,
                                        ),
                                        child: Image.asset(
                                            "assets/icons/mobile_phone.png"),
                                      ),
                                    ),
                                  )),
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
                        width: MediaQuery.of(context).size.width,
                        height: 210,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child:
                         Padding(
                           padding: const EdgeInsets.only(left:5.0,right:5.0),
                             child:  TextField(
                               controller: textEditingController,
                               maxLines: null,
                               // keyboardType: TextInputType.multiline,
                               style: TextStyle(
                                 height: .9, // Adjust the line height as needed
                                 fontSize: 15
                               ),

                               decoration: InputDecoration(
                                 border: InputBorder.none, // Hide input line
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
            padding: const EdgeInsets.only(left: 15.0, right: 15.00),
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
                          padding: const EdgeInsets.only(top: 10.0, bottom: 8),
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
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right:15),
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
                      width: 90,
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

}
