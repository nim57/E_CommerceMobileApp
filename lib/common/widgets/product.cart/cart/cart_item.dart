import 'package:flutter/material.dart';

import '../../../../featuers/shop/screens/product_details/widgets/product_title_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_Strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/i_rounded_image.dart';
import '../../texts/t_brand_title_text_with_veryfied_ICON.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundeImage(
          imageUrl: TImages.product5,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColor.darkerGrey : TColor.light,),
        const SizedBox(width: TSizes.spaceBtwItems,),

        /// Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'Singer'),
              Flexible(child: TProductTitleText(title:'Singer Eletroic Shop ', maxLine: 1, )),

              /// Attributes
              Text.rich(TextSpan(
                  children: [
                    TextSpan( text: 'Color ' , style: Theme.of(context).textTheme.bodySmall),
                    TextSpan( text: 'Green ' , style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan( text: 'Size ' , style: Theme.of(context).textTheme.bodySmall),
                    TextSpan( text: 'UK 08' , style: Theme.of(context).textTheme.bodyLarge),
                  ]
              ),),

            ],
          ),
        )
      ],
    );
  }
}
