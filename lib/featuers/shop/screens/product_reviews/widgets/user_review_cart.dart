import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/common/widgets/rating_indicator/rating_indicator.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCart extends StatelessWidget {
  const UserReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImahe2),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('Jone Don',style: Theme.of(context).textTheme.bodyMedium,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),

        /// Review

        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov 2023',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        ReadMoreText("Overall, I find the Comes mobile app very user-friendly and intuitive to navigate. The layout is clean, and the features are well-organized. However, I noticed a slight lag when switching between sections, particularly when accessing the 'Settings' menu. It would be great if this could be optimized for smoother performance. Additionally, I'd love to see more customization options for the user interface to personalize the experience further. Keep up the good work!",
        trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColor.primaryColor),
          lessStyle:const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColor.primaryColor),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

      /// Company Review
     TRoundedContainer(
       backgroundColor: dark ? TColor.darkerGrey : TColor.grey,
       child: Padding(
         padding: EdgeInsets.all(TSizes.md),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("BH's Store", style: Theme.of(context).textTheme.titleMedium,),
                 Text("02 Nov 2023", style: Theme.of(context).textTheme.bodyMedium,),
               ],
             ),
             const SizedBox(height: TSizes.spaceBtwItems,),
             ReadMoreText("Overall, I find the Comes mobile app very user-friendly and intuitive to navigate. The layout is clean, and the features are well-organized. However, I noticed a slight lag when switching between sections, particularly when accessing the 'Settings' menu. It would be great if this could be optimized for smoother performance. Additionally, I'd love to see more customization options for the user interface to personalize the experience further. Keep up the good work!",
               trimLines: 2,
               trimMode: TrimMode.Line,
               trimExpandedText: 'show less',
               trimCollapsedText: 'show more',
               moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColor.primaryColor),
               lessStyle:const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColor.primaryColor),
             ),
             const SizedBox(height: TSizes.spaceBtwItems,),
           ],
         ),
       ),
     ),
        const SizedBox(height: TSizes.spaceBtwItems,),
      ],
    );
  }
}
