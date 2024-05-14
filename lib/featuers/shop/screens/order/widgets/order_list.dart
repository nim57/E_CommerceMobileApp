import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
       shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (_,__) => SizedBox(height: TSizes.spaceBtwItems,),
        itemBuilder: (_,index) => TRoundedContainer(
        padding: EdgeInsets.all(TSizes.md),
        showBoarder: true,
        backgroundColor: dark ? TColor.dark : TColor.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// --Row 1
          Row(
            children: [
              /// 1 - Icon
            Icon(Iconsax.ship),
              SizedBox(width: TSizes.spaceBtwItems / 2,),
      
              /// 2 Status & Data
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Processing',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColor.primaryColor,fontWeightDelta: 1),),
                   Text('07 May 2024', style: Theme.of(context).textTheme.headlineSmall,),
                ],
              ),
            ),
      
              /// 3-Icon
            IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34,size: TSizes.iconSm,)),
            ],
          ),
            SizedBox(
                height: TSizes.spaceBtwItems ,),
            /// --Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),
                  
                      /// 2 Status & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),
                  
                      /// 2 Status & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('23 Feb 2025', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
