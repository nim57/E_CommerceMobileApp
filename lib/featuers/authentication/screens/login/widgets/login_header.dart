import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class header_login extends StatelessWidget {
  const header_login({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image:AssetImage(dark ? TImages.LightAppLogo: TImages.darkAppLogo)),
        const SizedBox(height: TSizes.sm,),
        Text(TText.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: TSizes.sm,),
        Text(TText.loginSubtitle,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}