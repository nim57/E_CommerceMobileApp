

import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({super.key,
    required this.title,
    this.maxline = 1 ,
    this.color,
    this.textalign  = TextAlign.center,
    this.brandTextSize = TextSizes.small,
   });

  final String title;
  final int maxline;
  final Color? color;
  final TextAlign? textalign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textalign,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,


      // Check which brandSize is request and set that style

      style: brandTextSize == TextSizes.small
      ? Theme.of(context).textTheme.labelMedium!.apply(color:color)
          :brandTextSize == TextSizes.medium
        ? Theme.of(context).textTheme.bodyLarge!.apply(color:color)
          :brandTextSize == TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color:color)
         : Theme.of(context).textTheme.bodyMedium!.apply(color:color)
    );
  }
}
