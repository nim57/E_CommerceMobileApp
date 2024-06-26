import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({super.key,
    this.width,
    this.height,
    this.redius = TSizes.cordRadiusLg,
    this.child,
    this.showBoarder = false,
    this.boaderColor = TColor.borderPrimary,
    this.backgroundColor = TColor.white,
    this.padding,
    this.margin});

  final double? width;
  final double? height;
  final double redius;
  final Widget ? child;
  final bool showBoarder;
  final Color boaderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(redius),
        border:  showBoarder ?  Border.all(color: boaderColor) :null,
      ),
      child: child,
    );
  }
}
