import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true, titlt: Text("Add New Address"),),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TextFormField(
              decoration:InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name ') ,),
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              decoration:InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number') ,),
            const SizedBox(height: TSizes.spaceBtwInputFields,),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration:InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street') ,),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields,),
                Expanded(
                  child: TextFormField(
                    decoration:InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal Code ') ,),
                ),

              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration:InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City') ,),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields,),
                Expanded(
                  child: TextFormField(
                    decoration:InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State') ,),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              decoration:InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country') ,),
            const SizedBox(height: TSizes.defaultSpace,),

            SizedBox(
              width: double.infinity,child:
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Save'),
                ),
            ),
          ],
    ),
      ),
      )  );
  }
}
