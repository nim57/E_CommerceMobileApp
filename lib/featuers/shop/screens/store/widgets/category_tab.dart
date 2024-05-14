import 'package:bh_customeapp/common/widgets/layouts/gride_layout.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/product_cart_vertical.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_Strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [ Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// --Brands
            const TBrandShowcase(images: [TImages.product1,TImages.product2,TImages.product3],),
            const TBrandShowcase(images: [TImages.product4,TImages.product5,TImages.product6],),

            /// --Products
            TSectionHeading(title: 'You might like',showActionButton: true, onPress: (){},),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            grid_layout(itemCount: 4, itemBuilder: (_, index) =>  const TProductCartVertical()),
            const SizedBox(height: TSizes.spaceBtwItems,)
      
      
          ],
        ),
      ),
    ],
    );
  }
}
