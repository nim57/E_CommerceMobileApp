import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/device/device_utility.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget  implements PreferredSizeWidget{
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColor.black : TColor.white,
      child: TabBar(
        tabs:tabs,
        isScrollable: true,
        indicatorColor: TColor.primaryColor,
        labelColor: dark ? TColor.white : TColor.primaryColor,
        unselectedLabelColor: TColor.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBorHeight());
}
