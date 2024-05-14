import 'package:bh_customeapp/featuers/shop/screens/cart/cart.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
     this.iconColor ,
     this.counterTextColor,
     this.counterBgColor,
  });
  final VoidCallback onPressed;
  final Color? iconColor, counterTextColor,counterBgColor;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(children:[
      IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag,color:  iconColor)),
      Positioned(
        right:0,
        child: Container(
          width: 18,
          height: 18,
          decoration:  BoxDecoration(
            color: counterBgColor ?? (dark ? TColor.white : TColor.black),
            borderRadius: BorderRadius.circular(100),),
          child: Center(
            child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: counterTextColor,fontSizeFactor: 0.8),),),
        ),
      ),
    ],
    );
  }
}