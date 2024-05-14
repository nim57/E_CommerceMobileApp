import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.background = TColor.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double  radius;
  final double padding;
  final Widget? child;
  final Color background;
  final EdgeInsets? margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color:background,
      ),
    );
  }
}