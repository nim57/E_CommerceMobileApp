import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smaillsize = false,
    this.maxLine=2,
    this.textAlign= TextAlign.left,
  });

  final String title;
  final bool smaillsize;
  final int maxLine;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return
          Text(title,
            style: smaillsize ? Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.labelSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: maxLine,
            textAlign: textAlign);

  }
}
