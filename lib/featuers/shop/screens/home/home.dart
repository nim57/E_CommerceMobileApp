import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/circular_container.dart';
import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/primary_header_container.dart';
import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/search_Container.dart';
import 'package:bh_customeapp/common/widgets/Custom_shaps/curved_edges/curved_edges.dart';
import 'package:bh_customeapp/common/widgets/Custom_shaps/curved_edges/curved_edges_widget.dart';
import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bh_customeapp/common/widgets/images/i_rounded_image.dart';
import 'package:bh_customeapp/common/widgets/product.cart/cart/card_menu_icon.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/product_cart_vertical.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/featuers/shop/screens/all_products/all_products.dart';
import 'package:bh_customeapp/featuers/shop/screens/home/widgets/home_appBAr.dart';
import 'package:bh_customeapp/featuers/shop/screens/home/widgets/home_cate.dart';
import 'package:bh_customeapp/featuers/shop/screens/home/widgets/promo_slider.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/device/device_utility.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/layouts/gride_layout.dart';
import '../../../../utils/constants/image_Strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Herder -- Tutorial
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// appBar
                  homeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// SearchBar
                 TSearchContainer(text: 'Search un Store',),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  /// Categories
                    Padding(
                      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [

                          /// --Heading
                          TSectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white,),
                          const SizedBox(height: TSizes.spaceBtwSections,),

                          /// Categories
                          THomeCategories(),
                        ],
                      ),
                    ),
                  SizedBox(height: TSizes.spaceBtwItems * 2,),


                ],
              ),
            ),
            
            /// Body

            Padding(padding:  const EdgeInsets.all(TSizes.defaultSpace),
              child:Column(
              children: [
                /// promo slider
               const TPromoSlider( banners:[TImages.add1, TImages.add2, TImages.add3],),
                const SizedBox(height: TSizes.spaceBtwSections,),

                /// --Heading

                TSectionHeading(title: 'Popular Product' , onPress: () => Get.to (() => const AllProducts()),showActionButton: true,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                /// Popular Product
                grid_layout(itemCount: 4, itemBuilder: ( _ ,index) => const TProductCartVertical(),),
                ],
              )
            ),
          ],
        ),
      ),
    ); // Scaffold
  }
}






