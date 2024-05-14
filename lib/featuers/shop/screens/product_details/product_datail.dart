
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/Product_detail_image.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/bottomAddToCart.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_reviews/product_reviews.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// --Product Image
            TProductImageSlider(dark: dark),

            /// -- Prodct Details
          Padding(
            padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                ///-Rating & Stoer
               TRatingAndShare(),

                ///-Price,title,Stock & Brand

                TProductMetaData(),

                ///-Attributes

                ProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections,),
                ///-Checj Button

                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                const SizedBox(height: TSizes.spaceBtwSections,),
                ///-Discription

                const TSectionHeading(title: 'Discription'),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ReadMoreText('This method will save memory by building items once it becomes necessary. This way they wont be built if theyre not currently meant to be visible on screen. It can be used to build different child item widgets related to content or by item index.',
                trimLines:2 ,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'less',
                moreStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                lessStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w800),),

                ///-Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const TSectionHeading(title: 'Reviews(199)',),
                    IconButton( icon:Icon( Iconsax.arrow_right_3,size: 18,),onPressed: () => Get.to(() => const ProductReviewScreen()) ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            ),
          ),

          ],
        ),
      ),
    );
  }
}

