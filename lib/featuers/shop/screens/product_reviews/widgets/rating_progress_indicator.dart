import 'package:flutter/material.dart';

import 'Progress_indicator_and_rating.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressInsdicator(text: '5', value: 1.0,),
              TRatingProgressInsdicator(text: '4', value: 0.8,),
              TRatingProgressInsdicator(text: '3', value: 0.6,),
              TRatingProgressInsdicator(text: '2', value: 0.4,),
              TRatingProgressInsdicator(text: '1', value: 0.2,),
            ],
          ),
        ),
      ],
    );
  }
}

