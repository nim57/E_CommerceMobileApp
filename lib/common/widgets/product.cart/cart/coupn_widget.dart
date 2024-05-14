import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../product_cards/rounded_container.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBoarder: true,
      backgroundColor: dark ? TColor. dark : TColor.white,
      padding: const EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm,right: TSizes.sm,left: TSizes.md),
      child: Row(
        children: [
          /// TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Heve a promo code ? Enter Hear',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder:  InputBorder.none,
                errorBorder:  InputBorder.none,
                disabledBorder:  InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? TColor.white.withOpacity(0.5) : TColor.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: Colors.grey.withOpacity(0.1),),
                ),
                child: const Text('Apply'),)),

        ],
      ),
    );
  }
}
