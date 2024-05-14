import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/brands/t_brand_card.dart';
import 'package:bh_customeapp/common/widgets/product.cart/sortable/sortable_product.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(titlt: Text('Singer'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
            TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections,),
              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
