import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBillingAddressScetion extends StatelessWidget {
  const TBillingAddressScetion({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address' ,
          buttonTitle: 'Change',
          showActionButton: true,
        onPress: (){},),
        Text('Nimesh Sa',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems /2,),
        Row(
          children: [
           Icon(Icons.phone,color: Colors.grey, size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems /2,),
            Text('070 1990179',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),
        Row(
          children: [
            Icon(Icons.location_history,color: Colors.grey, size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('Village 05 , B 52/2 Muwangala, hingurana',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems /2,),
      ],
    );
  }
}
