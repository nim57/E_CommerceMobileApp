import 'package:bh_customeapp/common/widgets/appbar/appbar.dart';
import 'package:bh_customeapp/featuers/shop/screens/order/widgets/order_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
    appBar: TAppBar(titlt: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body:
      const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),

        /// --Order
      child: TOrderListItem(),
      ),
    );
  }
}
