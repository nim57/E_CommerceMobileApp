import 'package:bh_customeapp/featuers/authentication/screens/password_Configuration/reset_password.dart';
import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
          padding: const  EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(TText.forgotPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TText.forgotPasswordSubtitle,style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections*2),

            /// Text Field
            /// Email
            TextFormField(
              decoration:  InputDecoration(labelText: TText.email, prefixIcon: Icon(Iconsax.direct_right),),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            /// Sumit Button

            SizedBox(width: double.infinity,child:  ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()), child: const Text(TText.submit),),),
          ],
        ),

      ),
    );
  }
}
