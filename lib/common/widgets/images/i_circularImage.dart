import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_Strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit,
    required this.image,
    this.isNetworkingImage =false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });


  final BoxFit ? fit;
  final String image;
  final bool isNetworkingImage;
  final Color ? overlayColor;
  final Color ? backgroundColor;
  final double width,height, padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??(THelperFunctions.isDarkMode(context) ? TColor.black : TColor.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkingImage? NetworkImage(image) :AssetImage(image) as ImageProvider,
          color:overlayColor
        ),
      ),
    );
  }
}
