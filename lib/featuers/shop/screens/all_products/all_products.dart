import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/layouts/gride_layout.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/product_cart_vertical.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/product.cart/sortable/sortable_product.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(titlt: Text('Popular Products'), showBackArrow:  true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(),

        ),
      ),
    );
  }
}

