
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class form_devider extends StatelessWidget {
  const form_devider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColor.darkerGrey : TColor.grey, thickness: 0.5,indent:60,endIndent: 5,)),
        Text(TText.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? TColor.darkerGrey : TColor.grey, thickness: 0.5,indent:5,endIndent: 60,)),
      ],
    );
  }
}

