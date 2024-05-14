import 'package:bh_customeapp/common/styles/spacing_styles.dart';
import 'package:bh_customeapp/common/widgets/loginsignup/form_devider.dart';
import 'package:bh_customeapp/common/widgets/loginsignup/social_buttons.dart';
import 'package:bh_customeapp/featuers/authentication/screens/login/widgets/login_form.dart';
import 'package:bh_customeapp/featuers/authentication/screens/login/widgets/login_header.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding (
          padding: TSpacingStyle.poddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logi ,Title & Sum-Title
              header_login(dark: dark),
              /// form 
             const loginForm(),

              /// Devider
              form_devider(dark: dark),
               const SizedBox(height: TSizes.spaceBtwItems,),
              /// Foutter
              social_buttons(),
            ]),
          )
        ),
    );
  }
}




