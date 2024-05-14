import 'package:bh_customeapp/featuers/authentication/screens/password_Configuration/forget_passowrd.dart';
import 'package:bh_customeapp/featuers/authentication/screens/signup_widgets/signup.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          /// Email

          TextFormField(
            decoration:  const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TText.email),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),

          /// password

          TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText:TText.password, suffixIcon: Icon(Iconsax.eye_slash) ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields/2,),
          /// Remember me & fought password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              /// Rember me
              Row(
                children: [
                  Checkbox(value: true, onChanged:(value){}),
                  const Text(TText.rememberMe),
                ],
              ),
              /// Forget password
              TextButton(onPressed: () => Get.to(() => const ForgetPassword()),
                  child: Text(TText.forgotPassword)),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Sing in button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()),child: const Text(TText.signin),),),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          /// Create New Account
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()),child: const Text(TText.createAccount),),),
        ],
      ),
    ),
    );
  }
}