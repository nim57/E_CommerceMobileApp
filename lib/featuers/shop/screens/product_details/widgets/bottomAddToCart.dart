import 'package:bh_customeapp/common/widgets/icon/t_circular_icon.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class TBottomAddCart extends StatelessWidget {
  const TBottomAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical:TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColor.darkerGrey : TColor.light,
        borderRadius : const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusXs),
          topRight: Radius.circular(TSizes.cardRadiusXs),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TcircularIcon(icon: Iconsax.minus,
              backgroundColor: TColor.darkGrey,
              width: 40,
              height: 40,
              color: TColor.white,),

              const SizedBox(width: TSizes.spaceBtwItems,),
              Text('2' ,style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              const TcircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColor.black,
                width: 40,
                height: 40,
                color: TColor.white,),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding:  const EdgeInsets.all(TSizes.md),
              backgroundColor : TColor.black,
              side : const BorderSide(color: TColor.black),
            ),
            child: const Text('Add to Cart'),
          ),

        ],
      ),

    );
  }
}
