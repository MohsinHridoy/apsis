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







class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  int? selectedContainerIndex;
  int currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 4,onTap:onTabTapped,),
    );
  }
}




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
    return Stack(
      children: [
        Container(
          width: 428,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 40,
                offset: Offset(0, 1),
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Container(
          width: 76,
          height: 77,
          decoration: ShapeDecoration(
            color: Color(0xFF3868CE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(99),
                topRight: Radius.circular(99),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, Icons.home, 'Home'),
              _buildNavItem(1, Icons.person, 'Profile'),
              _buildNavItem(2, Icons.settings, 'Settings'),
              _buildNavItem(3, Icons.access_alarm, 'ssss'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = index == widget.currentIndex;

    return GestureDetector(
      onTap: () {
        widget.onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}















