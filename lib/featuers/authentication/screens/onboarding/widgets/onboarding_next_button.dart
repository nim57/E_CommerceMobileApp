import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/device/device_utility.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child:ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark ? TColor.primaryColor : Colors.black ),
          child: Icon(Iconsax.arrow_right_3),
        ) );
  }
}