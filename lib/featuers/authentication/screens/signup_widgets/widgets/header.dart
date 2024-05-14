import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class header_Signup extends StatelessWidget {
  const header_Signup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 70),
      child: Text(TText.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
    );
  }
}