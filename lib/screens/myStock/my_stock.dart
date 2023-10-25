import 'package:flutter/material.dart';

class MyStock extends StatefulWidget {
  const MyStock({super.key});

  @override
  State<MyStock> createState() => _MyStockState();
}

class _MyStockState extends State<MyStock> {
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
              // left: 124,
              top: 42,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 78.0),
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

                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 20,
              top: 133,
              right: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: ShapeDecoration(
                  color: Color(0xFFFEFEFE),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0,right: 7.0),
                  child: GridView.builder(
                    shrinkWrap: true,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,  // Number of columns
                      crossAxisSpacing: 7.0,  // Spacing between columns
                      mainAxisSpacing: 7.0,   // Spacing between rows
                      childAspectRatio: 0.75,

                    ),
                    itemCount: 11,
                    itemBuilder: (BuildContext context, int index) {
                      // Return a widget for each item in yourDataList
                      return Container(
                        width: 107,
                        height: 11,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF4FAFF),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.09, color: Color(0xFF88CADA)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 93,
                              height: 70,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/93x83"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                              ),
                            ),
                            text("Potato Cracker",Color(0xFF282828),12),
                            text("Potato Cracker",Color(0xFF2E7229),12),
                            text("Potato Cracker",Color(0xFF3868CE),12)

                          ],
                        ),
                      );
                    },
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


Widget text(String txt,Color color,double size)
{
  return Text(
    txt,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  );
}