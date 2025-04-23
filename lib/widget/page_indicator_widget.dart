import 'package:flutter/material.dart';

class PageIndicatorWidget extends StatelessWidget {
  final int itemCount;
  final int currentPage;
  final Color activeColor;
  final Color inactiveColor;
  final double activeWidth;
  final double inactiveWidth;
  final double height;
  final double spacing;

  const PageIndicatorWidget({
    super.key,
    required this.itemCount,
    required this.currentPage,
    this.activeColor = Colors.yellowAccent,
    this.inactiveColor = Colors.black,
    this.activeWidth = 20.0,
    this.inactiveWidth = 9.0,
    this.height = 3.0,
    this.spacing = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          width: currentPage == index ? activeWidth : inactiveWidth,
          height: height,
          margin: EdgeInsets.symmetric(horizontal: spacing),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                height / 2),  
            shape: BoxShape.rectangle,
            color: currentPage == index ? activeColor : inactiveColor,
          ),
        );
      }),
    );
  }
}
