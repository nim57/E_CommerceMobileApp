import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage(TImages.checkimage), width: THelperFunctions.screenWidth()),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// Title & SubTitle
              Text(TText.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TText.changeYourPasswordSubtitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:(){},child: const Text(TText.done),),),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed:(){},child: const Text(TText.resendEmail),),),

            ],
          ),
        ) ,
      ),
    );
  }
}
