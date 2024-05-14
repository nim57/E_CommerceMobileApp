import 'package:flutter/material.dart';

import '../../../../../common/widgets/product.cart/product_cards/rounded_container.dart';
import '../../../../../common/widgets/texts/Section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_Strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method',
          buttonTitle: 'Change',
          showActionButton: true,
          onPress: () {},),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 60,
              backgroundColor: dark ? TColor.light : TColor.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image(
                image: AssetImage(TImages.paypal), fit: BoxFit.contain,),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Text('Paypal', style: Theme
                .of(context)
                .textTheme
                .bodyLarge,)
          ],
        ),
      ],
    );
  }
}