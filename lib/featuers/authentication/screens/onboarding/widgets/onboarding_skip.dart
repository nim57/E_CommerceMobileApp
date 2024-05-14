import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardinSkip extends StatelessWidget {
  const OnBoardinSkip({
    super.key,
  });
  /// Skip Button
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBorHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip'),),);
  }
}