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
                    SizedBox(height: 10,),
                    sleHstryCntnr1('Date range',Icon(Icons.abc), 'All time'),
                    SizedBox(height: 10,),
                    sleHstryCntnr1('Select product',Icon(Icons.abc), 'All time'),
                    SizedBox(height: 10,),
                    sleHstryCntnr1('All time total sold',Icon(Icons.abc), 'All time'),



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
Widget sleHstryCntnr1(String txt1,Icon icon,String txt2,){
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