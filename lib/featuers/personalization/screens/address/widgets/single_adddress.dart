import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/product.cart/product_cards/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      padding: EdgeInsets.all(TSizes.md),
      showBoarder: true,
      backgroundColor:selectedAddress ? TColor.primaryColor.withOpacity(0.5) : Colors.transparent ,
      boaderColor: selectedAddress
          ? Colors.transparent 
          :dark 
          ? TColor.darkerGrey
      : TColor.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child:Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.add_circle5 : null,
            color: selectedAddress
              ? dark
              ? TColor.light
              : TColor.dark .withOpacity(0.6): null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nimesh Sandaruwan',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: TSizes.sm / 2,),
               const Text('+94 701990179', maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm / 2,),
              const Text(' Village 05, B/52,2 Muwangala, Hingurana', softWrap: true,),
            ],
          ),
        ],
      ),
    );
  }
}
