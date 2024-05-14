
import 'package:bh_customeapp/common/widgets/loginsignup/form_devider.dart';
import 'package:bh_customeapp/common/widgets/loginsignup/social_buttons.dart';
import 'package:bh_customeapp/featuers/authentication/screens/signup_widgets/widgets/form_signup.dart';
import 'package:bh_customeapp/featuers/authentication/screens/signup_widgets/widgets/header.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
            header_Signup(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Form
              form_signup(dark: dark),

              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Devider

              form_devider(dark: dark),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// Foutter
              social_buttons(),
            ],
          ),
        ),
      ),
    );
  }
}




