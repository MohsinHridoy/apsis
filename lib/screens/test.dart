import 'dart:ui';

import 'package:flutter/material.dart';



class ClickableBlurContainer extends StatefulWidget {
  @override
  _ClickableBlurContainerState createState() =>
      _ClickableBlurContainerState();
}

class _ClickableBlurContainerState extends State<ClickableBlurContainer> {
  bool isContainer1Visible = false;
  bool isContainer2Visible = false;
  bool isBlurClickable = false;

  void toggleContainers() {
    setState(() {
      isContainer1Visible = !isContainer1Visible;
      isContainer2Visible = !isContainer2Visible;
      isBlurClickable = isContainer2Visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigoAccent,
        child: Column(
          children: [
            SizedBox(height: 80,),
            GestureDetector(
              onTap: toggleContainers,
              child: Center(
                child: Stack(
                  children: [
                    isContainer1Visible
                        ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.blue.withOpacity(0.7),
                    )
                        : SizedBox(),
                    isContainer2Visible
                        ? BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 2),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isContainer2Visible = false;
                            isBlurClickable = false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.transparent,
                        ),
                      ),
                    )
                        : SizedBox(),
                    Center(
                      child: Text(
                        'Click to Toggle Containers',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Visibility(
              visible: isContainer1Visible,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Container 1 Visible',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isContainer2Visible,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2 Visible',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
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

































