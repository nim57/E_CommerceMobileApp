import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/product.cart/cart/card_menu_icon.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_function.dart';

class homeAppBar extends StatelessWidget {
  const homeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      titlt: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TText.homeAppTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColor.grey)),
          Text(TText.homeAppSunbTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColor.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: (){}, iconColor: TColor.white,counterBgColor : TColor.black,counterTextColor : TColor.white)
      ],
    );
  }
}


