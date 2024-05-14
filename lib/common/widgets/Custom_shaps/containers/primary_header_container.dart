
import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/circular_container.dart';
import 'package:bh_customeapp/common/widgets/Custom_shaps/curved_edges/curved_edges_widget.dart';
import 'package:bh_customeapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgWidget(
      child: Container(
        color: TColor.primaryColor,

        /// --if[size.isFinite' : is not true.in tack] error occurred -> Read READMEN.md file at
          child:
          Stack(
            children: [
              /// -- Background Customer Shapes
              Positioned(top: -150, right: -250, child: TCircularContainer(background: TColor.white.withOpacity(0.1),),), // Container
              Positioned(top: 100, right: -300, child: TCircularContainer(background: TColor.white.withOpacity(0.1),),), // Container
            child,
            ], // Stack Children
          ),
        ), // Stack
    );
  }
}
