import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_title_text.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// --Selectd Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColor.darkerGrey : TColor.grey,
          child: Column(
            children: [
              /// Title,price & Stock Staus
              Row(
                children: [
                  const TSectionHeading(title: "Variation",showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ', smallSize: true,),
                          /// Actual Price
                          Text('\$ 25',
                            style: Theme.of(context).textTheme.titleSmall! .apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: TSizes.spaceBtwItems,),

                          /// Sale Price
                          TProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock',smallSize: true,),
                          Text('In Stok',style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),

                    ],
                  ),
                ],
              ),
              /// Variation Description
           TProductTitleText(title: 'This is the Description of the Product and it con go upto max 4 line.',
           smallSize: true,
           maxLine: 4,)
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// --Attibutes
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors'),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                choice_chip(text: 'Green', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Blue', selected: true,onSelected: (value) {},),
                choice_chip(text: 'Yellow', selected: false,onSelected: (value) {},),
                choice_chip(text: 'Black', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Green', selected: false,onSelected: (value) {},),
                choice_chip(text: 'Yellow', selected: false,onSelected: (value) {},),
                choice_chip(text: 'Green', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Blue', selected: false,onSelected: (value) {},),
                choice_chip(text: 'Yellow', selected: false,onSelected: (value) {},),

              ],
            ),
           ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             TSectionHeading(title: 'Size'),
            SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                choice_chip(text: 'Eu 34', selected: true, onSelected: (value) {},),
                choice_chip(text: 'Eu 36', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Eu 38', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Eu 34', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Eu 36', selected: false, onSelected: (value) {},),
                choice_chip(text: 'Eu 38', selected: false, onSelected: (value) {},),

              ],
            ),




           ],
        ),
      ],
    );
  }
}

