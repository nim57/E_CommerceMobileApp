import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/common/widgets/images/i_circularImage.dart';
import 'package:bh_customeapp/common/widgets/texts/Section_heading.dart';
import 'package:bh_customeapp/featuers/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/image_Strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        titlt: Text('Profile',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      ///-- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
               children: [
                 /// --Profile Picture
                 SizedBox(
                   width: double.infinity,
                   child: Column(
                     children: [
                       TCircularImage(image: TImages.user1,width: 80, height: 80,),
                       TextButton(onPressed:(){}, child: const Text("Change Profile Picture"),),
                     ],
                   ),
                 ),
                 /// Details
               const SizedBox(height: TSizes.spaceBtwItems / 2,),
                 const Divider(),
                 const SizedBox(height: TSizes.spaceBtwItems),

                /// Heading Profile Info
                const  TSectionHeading(title: 'Profile Information', showActionButton: false,),
                 const SizedBox(height: TSizes.spaceBtwItems),

                 profile_menu(onPressed: () {  }, title: 'Name', value: 'Nimesh Sandaruwan',),
                 profile_menu(onPressed: () {  }, title: 'Username', value: 'Nimesh123',),

                 const SizedBox(height: TSizes.spaceBtwItems,),
                 const Divider(),
                 const SizedBox(height: TSizes.spaceBtwItems),

                 /// Heading Personal Info
                 const  TSectionHeading(title: 'Personal Information', showActionButton: false,),
                 const SizedBox(height: TSizes.spaceBtwItems),

                 profile_menu(onPressed: () {  }, title: 'User ID', value: '57301',icon: Iconsax.copy,),
                 profile_menu(onPressed: () {  }, title: 'Email ', value: 'Nimeshsandaruwan268@gmail.com',),
                 profile_menu(onPressed: () {  }, title: 'Phone Number', value: '070-1990179',),
                 profile_menu(onPressed: () {  }, title: 'Gender', value: 'Male',),
                 profile_menu(onPressed: () {  }, title: 'Date Of Birth', value: '27/12/2001',),

                 const Divider(),
                 const SizedBox(height: TSizes.spaceBtwItems),

                 Center(
                   child: TextButton(
                     onPressed: (){},
                     child: const Text('Close Account ',style: TextStyle(color: Colors.red),),
                   ),
                 )




               ],
          ),
        ),
      ),
    );
  }
}

