import 'package:bh_customeapp/featuers/authentication/controllers/signup/signup_controller.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class form_signup extends StatelessWidget {
  const form_signup({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
      children: [
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          children: [
            /// first name
            Expanded(child: TextFormField(
              controller: controller.firstName,
              validator: (value) => TValidator.validateEmptyText('First name' , value),
              expands: false,
              decoration: const InputDecoration(labelText: TText.firstName,prefixIcon: Icon(Iconsax.user)),
            ),),
            const SizedBox(width: TSizes.spaceBtwInputFields,),
            /// last name
            Expanded(child: TextFormField(
              validator: (value) => TValidator.validateEmptyText('lastName' , value),
              controller: controller.lastName,
              expands: false,
              decoration: const InputDecoration(labelText: TText.lastName,prefixIcon: Icon(Iconsax.user)),
            ),),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        /// username
        TextFormField(
          validator: (value) => TValidator.validateEmptyText('username' , value),
          controller: controller.username,
          expands: false,
          decoration: const InputDecoration(labelText: TText.username,prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        /// email
        TextFormField(
          validator: (value) => TValidator.validateEmail( value),
          controller: controller.email,
          expands: false,
          decoration: const InputDecoration(labelText: TText.email,prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        /// phone number
        TextFormField(
          validator: (value) => TValidator.validatePhoneNumber(value),
          controller: controller.phoneNumber,
          expands: false,
          decoration: const InputDecoration(labelText: TText.phoneNumber,prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),

        /// password

        Obx(
            () => TextFormField(
            validator: (value) => TValidator.validatePassword(value),
            controller: controller.password,
            obscureText: controller.hidepassword.value,
            decoration:  InputDecoration(labelText: TText.password,prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () => controller.hidepassword.value = !controller.hidepassword.value,
              icon:  Icon(controller.hidepassword.value ? Iconsax.eye_slash :Iconsax.eye),),
            ),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwInputFields,),
        /// Terms&Condition Checkbox
        Row(
          children: [
            SizedBox(
                width:24,height:24,child: Obx(() => Checkbox(value: controller.privacryPolicy.value, onChanged: (value) => controller.privacryPolicy.value = ! controller.privacryPolicy.value))),
            const SizedBox(width:TSizes.spaceBtwItems ,),
            Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: '${TText.agreeTo}', style: Theme.of(context).textTheme.bodySmall,),
                    TextSpan(text: '${TText.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ?TColor.white : TColor.primaryColor,
                      decoration: TextDecoration.underline,
                    ),),
                    TextSpan(text: '${TText.and}', style: Theme.of(context).textTheme.bodySmall,),
                    TextSpan(text: '${TText.termsOfUse}', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ?TColor.white : TColor.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColor.white : TColor.primaryColor,
                    ),),
                  ]
              ),),
          ],
        ),
        const SizedBox(height:TSizes.spaceBtwSections ,),
        /// Sing Up   Button
        SizedBox(width: double.infinity,
          child: ElevatedButton(
            onPressed: () => controller.signup(),
            child:const  Text(TText.createAccount)),
        ) ,
      ],
    ),
    );
  }
}