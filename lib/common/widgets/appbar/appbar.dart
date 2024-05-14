import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/helpers/helper_function.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.titlt,
    this.showBackArrow=false,
    this.leadigIcon,
    this.actions,
    this.leadingOnPressed});

  final Widget? titlt;
  final bool showBackArrow;
  final IconData? leadigIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left,color: dark ? TColor.white : TColor.dark,),)
            :leadingOnPressed != null? IconButton(onPressed: leadingOnPressed ,icon: Icon(leadigIcon),) :null,
       title:titlt,
        actions: actions,
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBorHeight());


}
