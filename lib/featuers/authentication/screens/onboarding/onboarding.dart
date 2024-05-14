import 'package:bh_customeapp/featuers/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:bh_customeapp/featuers/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:bh_customeapp/featuers/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:bh_customeapp/featuers/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/theme/custom_themes/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controler = Get.put(OnBoardingController());
    return Scaffold(
      body:  Stack (
        children: [
          /// Horizontal Scrollable Page 
          PageView(
            controller: controler.pageController,
            onPageChanged: controler.updatePageIndicator,
            children:const [
              OnBoardingPage(image: TImages.onboardingImage1,titel: TTexts.onBoardingTitlel,subTitle:  TTexts.onBoardingSubTitlel),
              OnBoardingPage(image: TImages.onboardingImage2,titel: TTexts.onBoardingTitle2,subTitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(image: TImages.onboardingImage3,titel: TTexts.onBoardingTitle3,subTitle: TTexts.onboardingSubTitle3 ,),

            ],
          ),
          /// Skip Button
         const OnBoardinSkip(),

          /// Dot Navigation SmoothPageIndicator
        const  OnBoardingNavigation(),
          
          /// Circular Button 
          OnBoardingNextButton(),

        ],
      ),
    );
  }
}





