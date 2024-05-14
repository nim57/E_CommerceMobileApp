import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icon/t_circular_icon.dart';

class TProductQuantityWithAdd extends StatelessWidget {
  const TProductQuantityWithAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TcircularIcon(
          icon: Iconsax.minus,
          size: TSizes.md,
          width: 32,
          height: 32,
          color: THelperFunctions.isDarkMode(context) ? TColor.white : TColor.black,
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColor.darkerGrey : TColor.light,),

        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),

        TcircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColor.white,
          backgroundColor: TColor.primaryColor,),
      ],
    );
  }
}

