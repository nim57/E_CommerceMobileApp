import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoader{
  static hideSnakerBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({ required message }) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          elevation:  0,
            duration:  const Duration(seconds: 3),
            backgroundColor: Colors.transparent,
            content: Container(
              padding:  const EdgeInsets.all(12.0),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: THelperFunctions.isDarkMode(Get.context!) ? TColor.darkerGrey.withOpacity(0.9) : TColor.grey.withOpacity(0.9),
              ),
              child:  Center(child: Text(message,style: Theme.of(Get.context!).textTheme.labelLarge,),),
              ),
            ),
        );
    }

    static sucessSnackBar({ required title , message = '' ,duration = 3}){
      Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: TColor.primaryColor,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(10),
        icon: const Icon(Iconsax.check,color: TColor.white,),
      );
    }

  static warningSnackBar({ required title , message = ''}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColor.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2,color: TColor.white,),
    );
  }


  static errorSnackBar({ required title , message = ''}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: TColor.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2,color: TColor.white,),
    );
  }

}