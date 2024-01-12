import 'package:flutter/material.dart';
import 'package:untitled/widgets/colors.dart';

class TxtFldCntnr extends StatelessWidget {
  final IconData? iconData;
  final String? hintText;
  final TextEditingController? controller;

  TxtFldCntnr({
    required this.iconData,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396,
      height: 56,
      decoration: ShapeDecoration(
        color: colorWhite.withOpacity(0.25),
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
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            child: Container(
              width: 24,
              height: 24,
              decoration: ShapeDecoration(
                color: colorTeal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Icon(iconData, size: 24),
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller, // Use the provided controller
              style: TextStyle(color: colorWhite),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: colorWhite),
                fillColor: customColor1,
                contentPadding: EdgeInsets.all(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
