import 'package:flutter/material.dart';

Widget backArrow(){
  return Container(
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
  );
}


Widget appBarTitle(String title){
  return  Text(
    title,
    // 'Add New Customer',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xFFFEFEFE),
      fontSize: 20,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
  );
}


Widget addButton(String title){
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
        title,
        // 'Add new customer',
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




Widget list_title_text1(String title){
  return  Text(
    title,
    style: TextStyle(
      color: Color(0xFF282828),
      fontSize: 14,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  );
}


Widget list_title_text2(String title){
  return Text(
    title,
    style: TextStyle(
      color: Color(0xFF7A7A7A),
      fontSize: 12,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  );
}

Widget list_title_text3(String title){
  return Text(
    title,
    textAlign: TextAlign.right,
    style: TextStyle(
      color: Color(0xFFEE6161),
      fontSize: 14,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  );
}




Widget forwardIcon(){
  return Icon(
    Icons.arrow_forward_ios_outlined,
    size: 15,
  );
}

void navigateToNextPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}