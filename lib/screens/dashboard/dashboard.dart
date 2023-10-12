import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/new_sale/new_sale.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int? selectedContainerIndex;
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF3868CE), // Set the desired status bar color
    ));
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
              left: 10,
              top: 62,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/55x55"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ABC Enterprise',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                      child: Stack(children: []),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 133,
              right: 20,
              child: Container(
                  width: 388,
                  height: 237,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            dashboardContainer(
                                1,
                                60,
                                'Today',
                                Color(0xFF40C07B),
                                Color(0xFFE0FCCD),
                                Color(0xFF40C07B)),
                            dashboardContainer(
                                2,
                                84,
                                'Yesterday',
                                Color(0xFF3768CE),
                                Color(0xFFC2D1F1),
                                Color(0xFF40C07B)),
                            dashboardContainer(
                                3,
                                94,
                                'Last month',
                                Color(0xFF616161),
                                Color(0xFFD6D6D6),
                                Color(0xFF40C07B)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                dashboardText("Today’s sale till now"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 60.0, top: 6),
                                  child: dashboardText2(
                                      "14587.", Color(0xFF3A6CCF)),
                                ),
                                dashboardText("Today’s profit till now"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 60.0, top: 6),
                                  child: dashboardText2(
                                      "587.00", Color(0xFF40C07B)),
                                ),
                                dashboardText("Today’s due till now"),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 52.0, top: 6),
                                  child: dashboardText2(
                                      "4516.00", Color(0xFFE76767)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 28.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: CustomPaint(
                                        size: Size(100, 100),
                                        painter: MyCircularProgressPainter(
                                          backgroundColor: Color(0xFFE6E6E6),
                                          progress: 0.7,
                                          gradient: LinearGradient(
                                            begin: Alignment(0.06, -1.00),
                                            end: Alignment(-0.06, 1),
                                            colors: [
                                              Color(0xFF3563C2),
                                              Color(0xFFA4D9D0)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, left: 15),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              '72%',
                                              style: TextStyle(
                                                color: Color(0xFF282828),
                                                fontSize: 20,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              'Sale target \nachieved',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF7A7A7A),
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                      ),
                    ],
                  )),
            ),
            Positioned(
              left: 20,
              top: 393,
              right: 20,
              child: Container(
                  width: 396,
                  height: 351,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFEFEFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x66E2E2E2),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, // Number of columns
                      ),
                      itemCount: 12,
                      // Total number of grid items (3 rows x 3 columns)
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NewSale()), // Navigate to Page 2
                            );
                          },
                          child: Container(
                            height: 77,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 66,
                                    height: 66,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFDFF6FF),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1, color: Color(0x193668CE)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          // Add your BoxDecoration properties here if needed
                                          ),
                                      child: Icon(
                                        Icons.abc_sharp,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Customer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF282828),
                                    fontSize: 12,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
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
                              child: Stack(children: []),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              width: 16,
                              height: 14,
                              child: Stack(children: []),
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
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(1)),
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
                        padding: const EdgeInsets.only(
                            top: 3, left: 11, right: 10, bottom: 3),
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
                                children: [],
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
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }

  Widget dashboardContainer(int index, double width, String text,
      Color txtcolor, Color containeColor, Color selectedColor) {
    bool isSelected = selectedContainerIndex == index!!;
    Color borderColor = isSelected ? selectedColor : Colors.transparent;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainerIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          height: 22,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: ShapeDecoration(
            color: containeColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: borderColor),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Text(
            "$text",
            style: TextStyle(
              color: txtcolor,
              fontSize: 12,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}

class MyCircularProgressPainter extends CustomPainter {
  final double progress;
  final Gradient gradient;
  final Color backgroundColor; // New property for background color

  MyCircularProgressPainter({
    required this.progress,
    required this.gradient,
    required this.backgroundColor, // Pass the background color
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the background circle with the specified background color
    final backgroundPaint = Paint()
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = backgroundColor;

    final center = size.center(Offset.zero);
    final radius = size.width / 2;

    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw the progress arc using the gradient
    final progressPaint = Paint()
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..shader = gradient
          .createShader(Rect.fromCircle(center: center, radius: radius));

    final startAngle = 20 * (3.14159265359 / 180); // Convert degrees to radians
    final sweepAngle =
        progress * 360 * (3.14159265359 / 180); // Convert degrees to radians

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Widget dashboardText(String text) {
  return Text(
    '$text',
    style: TextStyle(
      color: Color(0xFF282828),
      fontSize: 14,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget dashboardText2(String price, Color color) {
  return Text(
    '৳ $price',
    style: TextStyle(
      color: color,
      // color: Color(0xFF3A6CCF),
      fontSize: 16,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  );
}

//
// class CustomBottomNavigationBar extends StatefulWidget {
//   final int currentIndex;
//   final Function(int) onTap;
//
//   CustomBottomNavigationBar({required this.currentIndex, required this.onTap});
//
//   @override
//   _CustomBottomNavigationBarState createState() =>
//       _CustomBottomNavigationBarState();
// }
//
// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         _buildNavItem(0, Icons.home, 'Home'),
//         _buildNavItem(1, Icons.person, 'Profile'),
//         _buildNavItem(2, Icons.settings, 'Settings'),
//         _buildNavItem(3, Icons.settings, 'Settings'),
//       ],
//     );
//   }
//
//   Widget _buildNavItem(int index, IconData icon, String label) {
//     return GestureDetector(
//       onTap: () {
//         widget.onTap(index);
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 60, // Adjust the width based on your design
//             height: 60, // Adjust the height based on your design
//             decoration: BoxDecoration(
//               color: index == widget.currentIndex ? Colors.blue : Colors.transparent,
//               borderRadius: BorderRadius.only(topLeft: Radius.circular(28.0),topRight: Radius.circular(28.0)), // Customize the border radius to make it square
//             ),
//             child: Icon(
//               icon,
//               color: index == widget.currentIndex ? Colors.white : Colors.grey,
//             ),
//           ),
//
//           // SizedBox(height: 4), // Adjust the spacing between the icon and label
//           // Text(
//           //   label,
//           //   style: TextStyle(
//           //     color: index == widget.currentIndex ? Colors.blue : Colors.grey,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _buildNavItem(0, Icons.home, 'Home'),
          _buildNavItem(1, Icons.person, 'Profile'),
          _buildNavItem(2, Icons.settings, 'Settings'),
          _buildNavItem(3, Icons.access_alarm, 'ssss'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        widget.onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Container(
              width: 60, // Adjust the width based on your design
              height: 60, // Adjust the height based on your design
              decoration: BoxDecoration(
                color: index == widget.currentIndex
                    ? Colors.blue
                    : Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.0),
                  topRight: Radius.circular(28.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.0),
                  topRight: Radius.circular(28.0),
                ),
                child: Icon(
                  icon,
                  color:
                      index == widget.currentIndex ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
