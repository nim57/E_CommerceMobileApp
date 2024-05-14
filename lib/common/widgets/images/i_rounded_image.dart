import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundeImage extends StatelessWidget {
  const TRoundeImage({
    super.key,
    this.width ,
    this.height ,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.boarder,
    this.backgroundColor ,
    this.fit = BoxFit.fill,
    this.padding,
    this.isNetworkingImage = false,
    this.onPressed,
    this.borderRadus = TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? boarder;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry ? padding;
  final bool isNetworkingImage ;
  final VoidCallback? onPressed;
  final double borderRadus;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onPressed,
      child: Container(
        width: width,
        height:  height,
        padding:  padding,
        decoration: BoxDecoration(border: boarder, color: backgroundColor, borderRadius: BorderRadius.circular(borderRadus),),
        child: ClipRRect(borderRadius:applyImageRadius ? BorderRadius.circular(borderRadus):BorderRadius.zero,
          child: Image(fit: fit, image:isNetworkingImage ? NetworkImage(imageUrl): AssetImage(imageUrl) as ImageProvider,),
        ),
      ),
    );
  }
}

