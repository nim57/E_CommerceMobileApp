import 'package:bh_customeapp/common/styles/shadows.dart';
import 'package:bh_customeapp/common/widgets/images/i_rounded_image.dart';
import 'package:bh_customeapp/common/widgets/texts/product_price.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/product_datail.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/image_Strings.dart';
import '../../icon/t_circular_icon.dart';
import '../../texts/product_title.dart';
import '../../texts/t_brand_title_text_with_veryfied_ICON.dart';

class TProductCartVertical extends StatelessWidget {
  const TProductCartVertical({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with padding,Color,edges,radius and shadow,
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShodow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColor.darkerGrey : TColor.white
        ),
        child: Column(
          children: [
            ///  Thumbnail, Wishlist Button, Discount Tag
      
            TRoundedContainer(
             height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColor.dark : TColor.light,
              child: Stack(
      
               children: [
                 ///  Thumbnail Image
                 TRoundeImage(imageUrl: TImages.product1,applyImageRadius: true,),
                 /// Sale Tag
                 Positioned(
                   top: 3,
                   child: TRoundedContainer(
                     redius: TSizes.sm,
                     backgroundColor: TColor.secondary.withOpacity(0.8),
                     padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                     child: Text("25%", style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColor.black),),
                   ),
                 ),
                 /// --Favourite Icon Button
                  Positioned(
                    top: 0,
                      right:0,
                      child: TcircularIcon(icon: Iconsax.heart5,color: Colors.red,)),
      
               ],
              ),
            ),
          const SizedBox(height: TSizes.spaceBtwItems/2,),
            /// --Details
            Padding(
              padding: EdgeInsets.symmetric(horizontal: TSizes.sm,),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(title: 'Eletronic Blender',smaillsize: true,),
                    SizedBox(height: TSizes.spaceBtwItems/2,),
                    TBrandTitleWithVerifiedIcon(title: 'Singer',),
                  ], ),
              ),),
            //Todo:add Space() hear to keep to each Box same in class 1 or 2 lines of Heading
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// price
                Padding(
                  padding:  EdgeInsets.only(left: TSizes.sm),
                  child: Text_price(price: '35.0',),
                ),

                /// Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: TColor.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusNd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                      width: TSizes.iconLg* 1.2,
                      height: TSizes.lg *1.2,
                      child: Center(child: Icon(Iconsax.add,color: TColor.white,))),
                ),

              ],
            ),
              ],
             ),
            ),
    );
        }
}



