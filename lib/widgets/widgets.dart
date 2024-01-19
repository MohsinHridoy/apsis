import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final double? containerWidth;
  final double? containerHeight;
  final Color? containerColor;
  final double? iconWidth;
  final double? iconHeight;
  final Color? iconColor;
  final IconData? iconData;
  final double? iconSize;
  final String? hintText;
  final Color? hintColor;
  final Color? fillColor;
  final double? contentPadding;

  TextFieldContainer({
    required this.containerWidth,
    required this.containerHeight,
    required this.containerColor,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconColor,
    required this.iconData,
    required this.iconSize,
    required this.hintText,
    required this.hintColor,
    required this.fillColor,
    required this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: ShapeDecoration(
        color: containerColor!.withOpacity(0.25),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF88CADA)),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 56,
            decoration: ShapeDecoration(
              color: Color(0xFF88CADA),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Container(
              width: iconWidth,
              height: iconHeight,
              decoration: ShapeDecoration(
                color: iconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Icon(iconData, size: iconSize),
            ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: hintColor),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: hintColor),
                fillColor: fillColor,
                contentPadding: EdgeInsets.all(contentPadding!),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextPassContainer extends StatelessWidget {
  final double? containerWidth;
  final double? containerHeight;
  final Color? containerColor;
  final double? iconWidth;
  final double? iconHeight;
  final Color? iconColor;
  final IconData? iconData;
  final double? iconSize;
  final String? hintText;
  final Color? hintColor;
  final Color? fillColor;
  final double? contentPadding;

  TextPassContainer({
    required this.containerWidth,
    required this.containerHeight,
    required this.containerColor,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconColor,
    required this.iconData,
    required this.iconSize,
    required this.hintText,
    required this.hintColor,
    required this.fillColor,
    required this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: ShapeDecoration(
        color: containerColor!.withOpacity(0.25),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF88CADA)),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 56,
            decoration: ShapeDecoration(
              color: Color(0xFF88CADA),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Container(
              width: iconWidth,
              height: iconHeight,
              decoration: ShapeDecoration(
                color: iconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Icon(iconData, size: iconSize),
            ),
          ),
          Expanded(


            child: PasswordTextField(),
          ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false; // Initially, password is obscured

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        obscureText: _obscureText,
        style: TextStyle(color: Colors.white),
        obscuringCharacter: "*",
        // Obscure text when true
        decoration: InputDecoration(
          hintText: 'Password', // Hint text
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          // Remove the underline border

          // fillColor: Colors.grey[200], // Background color
          contentPadding: EdgeInsets.all(8.0), // Padding inside the input field
        ),
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ),
    );
  }
}

Widget cashContainer1(String strText, String hints, bool w) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Visibility(
              visible: w,
              child: Text(
                '*',
                style: TextStyle(
                  color: Color(0xFFEE6161),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                style: TextStyle(
                  color: Color(0xFF939598),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hints,
                    enabled: false, // Set this to make the field non-editable

                    hintStyle: TextStyle(color: Color(0xFF939598))),
              ),
            ),
          ),
          Visibility(
            visible: w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.ac_unit,
                color: Color(0xFF939598),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

class CustomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color:    Color(0x00D0DFEB),

      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 40,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              // height: 80, // Specify the desired height
              // color: Colors.blue, // Color for the bottom navigation bar
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,

              height: 60,
              width: double.infinity, // Takes up the entire screen width
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 60,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildNavItem(0, "assets/icons/home.png", 'Home'),
                          _buildNavItem(1,"assets/icons/personalcard.png", 'Profile'),
                          _buildNavItem(2, "assets/icons/settings.png", 'Settings'),
                          _buildNavItem(3, "assets/icons/img_1.png", 'ssss'),
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
    );
  }

  Widget _buildNavItem(int index, String path, String label) {
    return GestureDetector(
      onTap: () {
        widget.onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Container(
              width: 60,
              height: index == widget.currentIndex ? 60 : 40,
              decoration: BoxDecoration(
                color: index == widget.currentIndex
                    ? Colors.blue
                    : Colors.transparent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5)),
              ),
              child:Padding(
                padding: index == widget.currentIndex ? const EdgeInsets.all(18.0):const EdgeInsets.all(10.0),
                child: Container(

                  decoration: BoxDecoration(
                    // color: index == widget.currentIndex ? Color(0xFF2F73FE) : Colors.red.withOpacity(.8),
                  ),
                  child: index  == widget.currentIndex  // Assuming 0 is the index where you want to show the image
                      ? ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      // Change this to the desired color (e.g., Color(0xFFFFD0BB))
                      BlendMode.srcATop,
                    ),
                        child: Image.asset(
                    path, // Replace with the actual path to your image
                    width: 24,
                    height: 24,
                    // Add other image-related properties as needed
                  ),
                      )
                      :  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black,
                      // Change this to the desired color (e.g., Color(0xFFFFD0BB))
                      BlendMode.srcATop,
                    ),
                        child: Image.asset(
                    path, // Replace with the actual path to your image
                    width: 24,
                    height: 24,
                    // Add other image-related properties as needed
                  ),
                      ), // Set to null for other indices if you don't want to show an image
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
Widget customDivider(){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),  // Adjust margin as needed
    child: Row(
      children: List.generate(43, (index) {
        return Container(
          width: 3,   // Adjust width as needed
          height: 0.5,   // Adjust height as needed
          color: Colors.grey,  // Adjust color as needed
          margin: EdgeInsets.symmetric(horizontal: 2),  // Adjust horizontal spacing as needed
        );
      }),
    ),
  );
}
Widget appBar(BuildContext context, String title, bool showImage) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: showImage, // Show the image when 'showImage' is true
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/55x55"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Visibility(
          visible: !showImage, // Show an icon when 'showImage' is false
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.arrow_back_ios, // Back button icon
              color: Colors.white, // Icon color
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            title,
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
  );
}

//
//
// class CustomNavigationBar extends StatefulWidget {
//   final int currentIndex;
//   final Function(int) onTap;
//
//   const CustomNavigationBar({required this.currentIndex, required this.onTap});
//
//   @override
//   _CustomNavigationBarState createState() => _CustomNavigationBarState();
// }
//
// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 0,
//       left: 0,
//       right: 0,
//       child: Column(
//         children: [
//           Container(
//             height: 60,
//             width: double.infinity,
//             color: Colors.transparent,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 _buildNavItem(0, Icons.home, 'Home'),
//                 _buildNavItem(1, Icons.person, 'Profile'),
//                 _buildNavItem(2, Icons.settings, 'Settings'),
//                 _buildNavItem(3, Icons.access_alarm, 'ssss'),
//               ],
//             ),
//           ),
//           Container(
//             height: 50,
//             color: Colors.white,
//           ),
//         ],
//       ),
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
//           Padding(
//             padding: const EdgeInsets.only(left: 18.0, right: 18),
//             child: Container(
//               width: 60,
//               height: index == widget.currentIndex ? 60 : 40,
//               decoration: BoxDecoration(
//                 color: index == widget.currentIndex ? Colors.blue : Colors.transparent,
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//               ),
//               child: Icon(
//                 icon,
//                 color: index == widget.currentIndex ? Colors.white : Colors.grey,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

Widget text(String txt,double fontSize) {
  return Text(txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w700,
        height: 0,
      ));
}


Widget text1(String txt,double fontSize) {
  return Text(
    txt,
    style: TextStyle(
      color: Colors.white,
      fontSize: fontSize,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}


Widget dot(){
  return  Container(
      width: 11,
      height: 11,
      decoration: ShapeDecoration(
      color: Color(0xFFD9D9D9),
  shape: OvalBorder(),));

}

Widget textField(String hintTxt){
  return TextField(
    style:TextStyle(color: Colors.white),
    decoration: InputDecoration(
      border: InputBorder.none,

      hintText: hintTxt,
      hintStyle: TextStyle(color: Colors.white),
      // border: InputBorder.none, // Removes the underline border
      // filled: true,
      // fillColor: Color(0xFFCE3888), // Background color
      contentPadding: EdgeInsets.all(16.0), // Padding inside the input field
    ),
  );
}


Widget richText(String A,String B){
  return  Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text:A,
          style: TextStyle(
            color: Colors.white,
            fontSize: 144.57,
            fontFamily: 'Monomaniac One',
            fontWeight: FontWeight.bold,
            height: 0,
            letterSpacing: -50.40,
          ),
        ),
        TextSpan(
          text: B,
          style: TextStyle(
            color: Color(0xFF88CADA),
            fontSize:144.57,
            // fontFamily: 'Monomaniac One',
            fontWeight: FontWeight.bold,
            height: 0,
            letterSpacing: -50.40,
          ),
        ),
      ],
    ),
  );
}