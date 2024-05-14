import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/widgets/loaders/animation_loder.dart';

/// A  Utility class for
class TFullScreenLoader{
  /// Open full Screen loading
  /// This methode doesn't return
  ///
  /// parameters
  /// text to be display in the looding dialog
  /// animation
  static void openLoadingDialog(String text, String animation){
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
          child: Container(
            color: THelperFunctions.isDarkMode(Get.context!) ? TColor.dark : TColor.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250,), // Adjust the
                TAnimationLoaderWidget(text: text, animation: animation ,),
              ],
            ),
          )),
    );
  }
  static stopLoding(){
    Navigator.of(Get.overlayContext!).pop() ;
  }
}