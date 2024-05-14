import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/circular_container.dart';
import 'package:bh_customeapp/common/widgets/images/i_rounded_image.dart';
import 'package:bh_customeapp/featuers/shop/controllers/home_controller.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeConteoller());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_) => controller.updatePageIndicator(index),

          ),
          items: banners.map((url) => TRoundeImage(imageUrl: url)).toList(),

        ),
        const SizedBox(height: TSizes.spaceBtwSections/2,),
        Center(
          child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i =0; i< banners.length ;i++)
                   TCircularContainer(
                    width: 30,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10) ,
                    background: controller.caroisalCurrentIndex.value == i ? Colors.blue: Colors.grey),

              ],
            ),
          ),
        ),
      ],
    );
  }
}