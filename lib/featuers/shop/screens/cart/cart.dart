import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/icon/t_circular_icon.dart';
import 'package:bh_customeapp/common/widgets/images/i_rounded_image.dart';
import 'package:bh_customeapp/common/widgets/texts/t_brand_title_text_with_veryfied_ICON.dart';
import 'package:bh_customeapp/featuers/shop/screens/cart/widgets/cart_items.dart';
import 'package:bh_customeapp/featuers/shop/screens/checkout/checkout.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_details/widgets/product_title_text.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/product.cart/cart/add_remove_button.dart';
import '../../../../common/widgets/product.cart/cart/cart_item.dart';

 class CartScreen extends StatelessWidget {
   const CartScreen({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: TAppBar(showBackArrow: true,titlt: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,),),
       body: Padding(
         padding: const EdgeInsets.all(TSizes.defaultSpace),

         /// --- Item in Cart
         child: TCardItems(),
       ),

       /// Checkout Button
       bottomNavigationBar: Padding(
         padding: const EdgeInsets.all(TSizes.defaultSpace),
         child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: Text('Checkout \$256.0'),),
       ),
     );
   }
 }

