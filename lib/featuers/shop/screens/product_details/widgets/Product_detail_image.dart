import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/Custom_shaps/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/icon/t_circular_icon.dart';
import '../../../../../common/widgets/images/i_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_Strings.dart';
import '../../../../../utils/constants/sizes.dart';
class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgWidget(
      child: Container(
        color:  dark ? TColor.darkGrey : TColor.light,
        child: Stack(
          children: [
            /// Main Large Image
            SizedBox(
                height: 400,
                child: Padding(
                  padding:  EdgeInsets.all(TSizes.productImageRadius *2),
                  child: Center(child: Image(image: AssetImage(TImages.product7))),
                )),

            /// Image Slider

            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    separatorBuilder: (_,__) => const SizedBox(width: TSizes.spaceBtwItems,),
                    itemCount: 6 ,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_,index) =>
                        TRoundeImage(
                            width: 80,
                            backgroundColor: dark ? TColor.dark : TColor.white,
                            boarder: Border.all(color: TColor.primaryColor),
                            padding: const EdgeInsets.all(TSizes.sm),
                            imageUrl:TImages.product8 )
                ),
              ),
            ),

            /// Appbar Icon
            TAppBar(
              showBackArrow: true,
              actions: [
                TcircularIcon(icon: Iconsax.heart5 ,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
