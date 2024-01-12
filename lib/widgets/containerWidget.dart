import 'package:flutter/material.dart';

class MyStaticContainer {
  static Widget createTextContainer(String x,String y) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: x,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 89.57,
                  fontFamily: 'Monomaniac One',
                  fontWeight: FontWeight.bold,
                  height: 0,
                  letterSpacing: -31.35,
                ),
              ),
              TextSpan(
                text: y,
                style: TextStyle(
                  color: Color(0xFF88CADA),
                  fontSize: 89.57,
                  fontFamily: 'Monomaniac One',
                  fontWeight: FontWeight.bold,
                  height: 0,
                  letterSpacing: -31.35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget containerButton({
    required double width ,
    required double height ,
    required Color color ,
    required double borderRadius ,
    required Color shadowColor,
    required double shadowBlurRadius ,
    required Offset shadowOffset ,
    required double shadowSpreadRadius,
    required String buttonText ,
    required double fontSize ,
    required String fontFamily,
    required FontWeight fontWeight,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        shadows: [
          BoxShadow(
            color: shadowColor,
            blurRadius: shadowBlurRadius,
            offset: shadowOffset,
            spreadRadius: shadowSpreadRadius,
          )
        ],
      ),
      child: Center(
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            height: 0,
          ),
        ),
      ),
    );
  }}
