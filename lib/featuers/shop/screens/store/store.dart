import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/search_Container.dart';
import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/product.cart/cart/card_menu_icon.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/featuers/shop/screens/brand/all_brands.dart';
import 'package:bh_customeapp/featuers/shop/screens/store/section_heading.dart';
import 'package:bh_customeapp/featuers/shop/screens/store/widgets/category_tab.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/enums.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../common/widgets/images/i_circularImage.dart';
import '../../../../common/widgets/layouts/gride_layout.dart';
import '../../../../common/widgets/brands/t_brand_card.dart';
import '../../../../common/widgets/texts/t_brand_title_text_with_veryfied_ICON.dart';
import '../../../../utils/constants/sizes.dart';
 
class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// Appbar
        appBar: TAppBar(
          titlt: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCartCounterIcon(onPressed: () {}, )
          ],
        ),
        body: NestedScrollView(
          /// Header
          headerSliverBuilder:(_,innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColor.black :TColor.white,
            expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// -- Search Bar
                    SizedBox(height: TSizes.spaceBtwItems,),
                    TSearchContainer(text: 'Search in Store',showBorder: true,showBackground: false, padding: EdgeInsets.zero,),
                    SizedBox(height: TSizes.spaceBtwSections,),

                    /// --- Feature Brands
                    TSelectionHeading(title: 'Featured Brand', onPressed: () => Get.to(() => AllBrandsScreen()),),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

                    ///-- Brand Grid
                    grid_layout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_,index){
                      return TBrandCard(showBorder: true,);
                    }),
                  ],
                ),
              ),

              /// Tabs
            bottom: TTabBar(
              tabs:[
              Tab(child: Text('Electronic'),),
              Tab(child: Text('Furniture'),),
              Tab(child: Text('Kichen'),),
              Tab(child: Text('OfficeItem'),),  ],),
            ),
          ];
        },
          /// --Body
          body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),

            ],
          )),
      ),
    );
  }
}

