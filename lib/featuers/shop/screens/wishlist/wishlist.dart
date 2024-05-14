import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/circular_container.dart';
import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/icon/t_circular_icon.dart';
import 'package:bh_customeapp/common/widgets/images/i_circularImage.dart';
import 'package:bh_customeapp/common/widgets/layouts/gride_layout.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/product_cart_vertical.dart';
import 'package:bh_customeapp/featuers/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/product.cart/cart/card_menu_icon.dart';
import '../../../../utils/constants/sizes.dart';

class FavoutiteScreen extends StatelessWidget {
  const FavoutiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        titlt: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
         TcircularIcon(icon: Iconsax.add,onPressed: () => Get.to(const HomeScreen())),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
               grid_layout(itemCount: 10, itemBuilder: (_,index) => TProductCartVertical())
            ],
          ),
        ),
      ),
    );
  }
}
