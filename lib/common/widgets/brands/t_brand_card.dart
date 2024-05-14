import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_Strings.dart';
import '../../../utils/constants/sizes.dart';
import '../images/i_circularImage.dart';
import '../texts/t_brand_title_text_with_veryfied_ICON.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      /// Container Desing
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBoarder: showBorder,
        boaderColor: Colors.grey,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: TCircularImage(
                isNetworkingImage: false,
                backgroundColor: Colors.transparent,
                image: TImages.electronic,
                overlayColor: isDark ? TColor.white : TColor.black,),
            ),
            const SizedBox(width: TSizes.spaceBtwSections /2,),

            /// --- Text

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Singer',brandTextSize: TextSizes.large,),
                  Text('300 Product wiht our Store ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

