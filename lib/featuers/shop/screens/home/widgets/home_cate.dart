import 'package:bh_customeapp/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bh_customeapp/featuers/shop/screens/sub_categories/sub_categories.dart';
import 'package:bh_customeapp/utils/constants/image_Strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (__,index){
              return TVerticalImageText(image: TImages.electronic, tittle: 'electronic',onTap: () => Get.to(() => const SubCategoriesScreen()),);
            }
        )
    );
  }
}
