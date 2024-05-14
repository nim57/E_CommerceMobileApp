import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TcircularIcon extends StatelessWidget {

  /// A customer
  ///
  /// properties
  /// container
  ///
  /// Icon's
  const TcircularIcon({
    super.key,
    this.width,
     this.height,
     this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width,height,size;
  final IconData icon;
  final Color ? color;
  final Color ? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor!= null ?
        backgroundColor! :THelperFunctions.isDarkMode(context) ? TColor.black.withOpacity(0.9) : TColor.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon:  Icon(icon,color: color, size: size,),),
    );
  }
}
