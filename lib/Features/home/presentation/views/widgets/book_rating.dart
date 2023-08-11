import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.avgRating,
      required this.ratingCount});
  final num avgRating;
  final num ratingCount;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Color(0xFFFFDD4F)),
        const SizedBox(width: 6),
        Text('$avgRating', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '($ratingCount)',
          style: Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}
