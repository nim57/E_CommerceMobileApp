import 'package:bh_customeapp/common/widgets/Custom_shaps/containers/circular_container.dart';
import 'package:bh_customeapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class choice_chip extends StatelessWidget {
  const choice_chip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,

  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null ;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected:onSelected,
      labelStyle: TextStyle(color: selected ? TColor.white : null),
      avatar:  isColor  ? TCircularContainer(width: 50, height: 50, background: THelperFunctions.getColor(text) !) : null,
      shape: isColor  ? const CircleBorder() : null,
      labelPadding: isColor  ? const EdgeInsets.all(0) : null, // Make icon in the Center
      padding: isColor  ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor  ?  THelperFunctions.getColor(text) ! :null,
    );
  }
}
