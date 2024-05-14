import 'package:bh_customeapp/common/widgets/success_screen/sussess_screen.dart';
import 'package:bh_customeapp/featuers/authentication/screens/login/login.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:() => Get.back(), icon:const  Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
             /// Image
               Image(image: AssetImage(TImages.checkimage),
               width: THelperFunctions.screenWidth()),
              /// Title & SubTitle
            Text(TText.confirmEmailTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('Nimeshsandaruwan268@gmail.com',style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TText.confirmEmailSubtitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(() =>  SuccessScreen(
              image: TImages.checkimage,
              title: TText.accountCreatedTitle,
              subTitle: TText.youtAccountCreatedSubTitle,
              onPressed: () => Get.to(() => const LoginScreen()),
            ),),
              child: const Text(TText.tcontinue),),),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: const Text(TText.resendEmail),),),
            ],
          ),
        ),
      ),
    );
  }
}




