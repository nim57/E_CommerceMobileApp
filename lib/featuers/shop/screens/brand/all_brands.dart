import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/brands/t_brand_card.dart';
import 'package:bh_customeapp/common/widgets/layouts/gride_layout.dart';
import 'package:bh_customeapp/common/widgets/product.cart/sortable/sortable_product.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/featuers/shop/screens/brand/brand_products.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(titlt: Text('Brand'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
            TSectionHeading(title: 'Brands',showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              /// --Brands
              grid_layout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (context, index) => TBrandCard(showBorder: true,onTap: () => Get.to(() => const BrandProduct()),),),
            ],
          ),
        ),
      ),
    );
  }
}
