import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_reviews/widgets/Progress_indicator_and_rating.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:bh_customeapp/featuers/shop/screens/product_reviews/widgets/user_review_cart.dart';
import 'package:bh_customeapp/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/rating_indicator/rating_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar

      appBar: TAppBar(titlt: Text('Reviews & Rating '),showBackArrow: true,),

      ///-- Body
    body: SingleChildScrollView(
         padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Rating and reviews are verified and from people who use the same type of device that you use .'),
          SizedBox(height:TSizes.spaceBtwItems,),

      /// Overall Product Rating
          TOverallProductRating(),
          TRatingBarIndicator(rating: 3.5,),
           Text('12,613',style: Theme.of(context).textTheme.bodySmall,),
          const SizedBox(height: TSizes.spaceBtwSections,),

          /// User Raviews List
        UserReviewCart(),
          UserReviewCart(),
          UserReviewCart(),
          UserReviewCart(),
        ],
      ),
    ),

    );
  }
}



