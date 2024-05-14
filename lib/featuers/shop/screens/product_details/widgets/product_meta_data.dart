import 'package:bh_customeapp/common/widgets/images/i_circularImage.dart';
import 'package:bh_customeapp/common/widgets/texts/t_brand_title_text_with_veryfied_ICON.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_title_text.dart';
import 'package:bh_customeapp/utils/constants/enums.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_Strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              redius: TSizes.sm,
              backgroundColor: TColor.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
              child: Text("25%", style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColor.black),),
            ),

            const SizedBox(width: TSizes.spaceBtwItems,),
            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
           const TProductPriceText(price: '175', isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Title
        const TProductTitleText(title: 'Rice Cooker'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Stock Status

        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems/1.5,),
        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.google,
            width: 32,
            height: 32,
            overlayColor: darkmode ? TColor.white : TColor.black,),
            TBrandTitleWithVerifiedIcon(title:'Singer',brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
