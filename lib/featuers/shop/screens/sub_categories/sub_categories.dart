import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/images/i_rounded_image.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/product.cart/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(titlt: Text('Electronic Item'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              /// Banner
              TRoundeImage(imageUrl: TImages.add1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// Sub- Categories
              Column(
                children: [

                  /// Heading
                  TSectionHeading(title: "Electronic Item", onPress: () {},),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                        itemBuilder:(context,index)  =>ProductCartVirtical()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
