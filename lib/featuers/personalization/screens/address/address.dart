import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/product.cart/product_cards/rounded_container.dart';
import 'package:bh_customeapp/featuers/personalization/screens/address/widgets/single_adddress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColor.primaryColor,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add,color: TColor.white,),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        titlt: Text('Address', style: Theme.of(context).textTheme.headlineSmall,) ,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
              TSingleAddress(selectedAddress: false),
            TSingleAddress(selectedAddress: true)
          ],
        ),),
      ),
    );
  }
}
