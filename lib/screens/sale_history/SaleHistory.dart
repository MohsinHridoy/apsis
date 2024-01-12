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
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF2F73FE), Color(0x00D0DFEB)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      // width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                              'Sale History',
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
                    SizedBox(height: 20,),
                    SizedBox(height: 6,),
                    sleHstryCntnr1('Date range',"assets/icons/calender.png", 'All time'),
                    SizedBox(height: 6,),
                    sleHstryCntnr3('Select product',"assets/icons/bag.png", 'All time'),
                    SizedBox(height: 6,),
                    sleHstryCntnr2('All time total sold',Icon(Icons.abc), '৳ 16,547.00'),



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
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(15),
                ),


              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(5)),
                  ),
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {

                      return listCntr1(items,index);
                    },
                  ),
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













Widget listCntr1(List items,int index)
{
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
                  text(items[index].title,Color(0xFF282828),16),
                  text(items[index].quantity,Color(0xFF7A7A7A),14),
                  text(items[index].unit,Color(0xFF7A7A7A),12)
                ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  text(items[index].unitprice,Color(0xFFEE6161),14),
                  text(items[index].quantity,Color(0xFF7A7A7A),12)
                ],
              ),
            ),
          ],
        ),

        customDivider()
      ],
    ),
  );
}

Widget customDivider(){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),  // Adjust margin as needed
    child: Row(
      children: List.generate(30, (index) {
        return Container(
          width: 7,   // Adjust width as needed
          height: 0.5,   // Adjust height as needed
          color: Colors.grey,  // Adjust color as needed
          margin: EdgeInsets.symmetric(horizontal: 2),  // Adjust horizontal spacing as needed
        );
      }),
    ),
  );
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
Widget sleHstryCntnr1(String txt1,String image,String txt2,){
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 388,
      height: 56,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 38,
              height: 34,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    // image: AssetImage('assets/icons/calender.png'),
                    // Replace 'your_image.png' with the actual path to your asset image
                    fit: BoxFit.cover, // Adjust the fit as needed
                  )),
            ),
          ),
          Text(
            txt1,
            style: TextStyle(
              color: Color(0xFF282828),
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(width:150 ,),
          Text(
            txt2,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF7A7A7A),
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Visibility(
            visible: true,
              child: Icon(Icons.arrow_drop_down)
          )

        ],
      ),
    ),
  );
}
Widget sleHstryCntnr3(String txt1,String image,String txt2,){
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 388,
      height: 56,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 38,
              height: 34,
              decoration: BoxDecoration(
                color: Color(0x332E7229),
                  image: DecorationImage(
                    image: AssetImage(image),
                    // image: AssetImage('assets/icons/calender.png'),
                    // Replace 'your_image.png' with the actual path to your asset image
                    fit: BoxFit.cover, // Adjust the fit as needed
                  )),
            ),
          ),
          Text(
            txt1,
            style: TextStyle(
              color: Color(0xFF282828),
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(width:150 ,),
          Text(
            txt2,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF7A7A7A),
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Visibility(
            visible: true,
              child: Icon(Icons.arrow_drop_down)
          )

        ],
      ),
    ),
  );
}

Widget sleHstryCntnr2(String txt1,Icon icon,String txt2,){
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 388,
      height: 56,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 38,
              height: 34,
              decoration: ShapeDecoration(
                color: Color(0xFFDFF6FF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              child: icon,
            ),
          ),
          Text(
            txt1,
            style: TextStyle(
              color: Color(0xFF282828),
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(width:100 ,),
          Text(
            txt2,
            textAlign: TextAlign.right,
            style: TextStyle(
              color:  Color(0xFF3868CE),
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),


        ],
      ),
    ),
  );
}