import 'package:flutter/material.dart';

class Text_price extends StatelessWidget {
  const Text_price({
    super.key,
    this.cuttrncSign = '\$',
    required this.price,
    this.maxLines =1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String cuttrncSign,price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      cuttrncSign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style:isLarge
      ?  Theme.of(context).textTheme.headlineMedium! .apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
      : Theme.of(context).textTheme.titleLarge! .apply(decoration: lineThrough ? TextDecoration.lineThrough :null ),
    );
  }
}
