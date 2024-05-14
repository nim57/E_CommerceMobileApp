import 'package:bh_customeapp/common/widgets/texts/t_brand_title_text.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxline =1 ,
    this.textColor,
    this.iconColor = TColor.primaryColor,
    this.textalign = TextAlign.center,
     this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxline;
  final Color ? textColor,iconColor;
  final TextAlign? textalign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
              title:title,
              color: textColor,
              maxline : maxline,
              textalign:textalign,
              brandTextSize : brandTextSize,
            ),
        ),
        const SizedBox(width: TSizes.xs,),
        const Icon(Iconsax.verify5,color: TColor.primaryColor,size: TSizes.iconXs,)
      ],
    );
  }
}

