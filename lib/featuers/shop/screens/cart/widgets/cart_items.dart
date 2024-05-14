import 'package:flutter/material.dart';
import '../../../../../common/widgets/product.cart/cart/add_remove_button.dart';
import '../../../../../common/widgets/product.cart/cart/cart_item.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../product_details/widgets/product_price_text.dart';

class TCardItems extends StatelessWidget {
  const TCardItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections, ),
      itemCount: 2,
      itemBuilder: (_, index) =>  Column(
        children: [

          /// -- Cart Item
          const TCartItem(),
          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems,),

          /// Add Remove Button Row with total Price
          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Spase
                  SizedBox(width: 70,),
                  /// Add Remove Button
                  TProductQuantityWithAdd(),
                ],
              ),
              TProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}

