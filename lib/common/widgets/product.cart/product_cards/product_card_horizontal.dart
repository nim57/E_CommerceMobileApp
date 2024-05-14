import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../featuers/shop/screens/product_details/widgets/product_title_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_Strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../../styles/shadows.dart';
import '../../icon/t_circular_icon.dart';
import '../../images/i_rounded_image.dart';
import '../../texts/product_price.dart';
import '../../texts/t_brand_title_text_with_veryfied_ICON.dart';

class ProductCartVirtical extends StatelessWidget {
  const ProductCartVirtical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColor.darkerGrey : TColor.softGrey
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColor.dark : TColor.light,
              child:Stack(
                children: [
                  ///  Thumbnail Image
                  SizedBox( width: 120,height: 120,child: TRoundeImage(imageUrl: TImages.product1,applyImageRadius: true,)),
                  /// Sale Tag
                  Positioned(
                    top: 12,
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
                      right: 0,
                      child: TcircularIcon(icon: Iconsax.heart5,color: Colors.red,)),
                ],
              ),
          ),

          /// Details

          SizedBox(
            width: 172,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: 'Eletronic Item hea sdsa sedsa',smallSize: true,),
                      SizedBox(height: TSizes.spaceBtwItems/2,),
                      TBrandTitleWithVerifiedIcon(title: 'Singer',),
                    ],
                  ),
                ),
              const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// price
                    Flexible(child: Text_price(price: '35.0',)),

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
          )

        ],
      ),
    );
  }
}
