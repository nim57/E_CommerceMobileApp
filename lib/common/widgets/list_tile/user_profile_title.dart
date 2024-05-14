import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_Strings.dart';
import '../images/i_circularImage.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user1, width: 55, height: 50, padding: 0,),
      title: Text('Nimesh Sandaruwan',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColor.white),),
      subtitle:Text('Nimeshsandaruwan268@gmail.com',style: Theme.of(context).textTheme.bodySmall!.apply(color: TColor.white),maxLines: 1,),
      trailing: IconButton(onPressed:onPressed,icon: const Icon(Iconsax.edit,color: TColor.white,),),
    );
  }
}