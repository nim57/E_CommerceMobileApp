import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/primary_header_container.dart';
import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/images/i_circularImage.dart';
import 'package:bh_customeapp/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/featuers/personalization/screens/address/address.dart';
import 'package:bh_customeapp/featuers/personalization/screens/profile/widgets/profile.dart';
import 'package:bh_customeapp/featuers/shop/screens/cart/cart.dart';
import 'package:bh_customeapp/featuers/shop/screens/order/order.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tile/user_profile_title.dart';
import '../../../../utils/constants/image_Strings.dart';
import '../../../../utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                /// -- Header
                TPrimaryHeaderContainer(child: Column(
                  children: [
                    /// Appbar
                     TAppBar(titlt: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColor.white),),),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    /// User Profile Card
                    TUserProfileTile(onPressed: () => Get.to(() =>const ProfileScreen(),)),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    SizedBox(height: TSizes.spaceBtwItems,),
                  ],
                ),),
                /// --Body

                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// -- Account  Settings
                            TSectionHeading(title: 'Account Settings',),
                      SizedBox(height: TSizes.spaceBtwItems,),

                      TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subtitle: 'Set shopping delivery Address', onTap: () => Get.to(() => UserAddressScreen()),),
                      TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add,remov product and move to che', onTap: () => Get.to(() => CartScreen()),),
                      TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subtitle: 'In-Progress and Completed Orders', onTap: () => Get.to(() => OrderScreen()),),
                      TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account', onTap: (){},),
                      TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupar', onTap: (){},),
                      TSettingsMenuTile(icon: Iconsax.notification, title: 'Notification', subtitle: 'Set and kind of notification message ', onTap: (){},),
                      TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connect ', onTap: (){},),

                      /// --App Settings
                      SizedBox(height: TSizes.spaceBtwItems,),
                      TSectionHeading(title: 'App Settings',),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Lode Data', subtitle: 'Upload Your Data ', onTap: (){},),
                      TSettingsMenuTile(icon: Iconsax.location, title:'Geolocations', subtitle: 'Set recommendation based on Location', trailing: Switch(value: true,onChanged: (value){},),),
                      TSettingsMenuTile(icon: Iconsax.security_user, title:'Safe Mode', subtitle: 'Search result is safe all ages', trailing: Switch(value: false,onChanged: (value){},),),
                      TSettingsMenuTile(icon: Iconsax.image, title:'Hd Image Quality', subtitle: 'Ste Image quality to be seen', trailing: Switch(value: false,onChanged: (value){},),),

                      /// --Logout Button

                      const SizedBox(height: TSizes.spaceBtwItems,),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems*2.5),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}


