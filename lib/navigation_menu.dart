import 'package:bh_customeapp/featuers/personalization/screens/settings/settings.dart';
import 'package:bh_customeapp/featuers/shop/screens/home/home.dart';
import 'package:bh_customeapp/featuers/shop/screens/store/store.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'featuers/shop/screens/wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final darkmode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 50,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkmode ? TColor.black : Colors.white,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          indicatorColor: darkmode ? TColor.white.withOpacity(0.1) : TColor.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body:Obx(() =>  controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screen = [const HomeScreen(),const Store(),const FavoutiteScreen(), const SettingScreen()];
}
