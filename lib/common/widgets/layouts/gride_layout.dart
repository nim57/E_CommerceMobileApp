
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../product.cart/product_cards/product_cart_vertical.dart';

class grid_layout extends StatelessWidget {
  const grid_layout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount ;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext,int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,),
      itemBuilder: itemBuilder );
  }
}
