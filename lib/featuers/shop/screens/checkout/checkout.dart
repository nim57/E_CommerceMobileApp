import 'package:bh_customeapp/common/widgets/product.cart/cart/cart_item.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/common/widgets/success_screen/sussess_screen.dart';
import 'package:bh_customeapp/featuers/shop/screens/cart/widgets/cart_items.dart';
import 'package:bh_customeapp/featuers/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:bh_customeapp/featuers/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:bh_customeapp/featuers/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:bh_customeapp/navigation_menu.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/product.cart/cart/coupn_widget.dart';
import '../../../../utils/constants/colors.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(showBackArrow: true,titlt: Text('Order Review',style: Theme.of(context).textTheme.headlineSmall,),),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// -- Item in Cart
              TCardItems(showAddRemoveButton: false,),
                SizedBox(height: TSizes.spaceBtwSections,),

                /// --Coupn TextField
              TCouponCode(),
                const SizedBox(height: TSizes.spaceBtwSections,),

                /// --Billing Section

                TRoundedContainer(
                  showBoarder: true,
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: dark ? TColor.black : TColor.white,
                  child: Column(
                    children: [
                      /// Pricing
                     TBillingPaymentScetion(),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      /// Devider
                      const Divider(),
                      const SizedBox(height: TSizes.spaceBtwSections,),
                      /// Payment Methods
                      BillingAmountSection(),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      /// Address
                      TBillingAddressScetion(),
                    ],
                  ),
                ) ,
              ],
            ),
          ),
        ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() =>SuccessScreen(
            image: TImages.succes,
            title: "Payment Success",
            subTitle: ' Your Item will be Shipping soon!',
            onPressed: () => Get.offAll(() => const NavigationMenu()))),
          child: Text('Checkout \$256.0'),),
      ),
    );
  }
}

