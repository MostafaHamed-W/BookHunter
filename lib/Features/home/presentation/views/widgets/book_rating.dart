import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('19.99 €', style: Styles.textStyle20),
        const SizedBox(width: 36),
        const Icon(Icons.star, color: Color(0xFFFFDD4F)),
        const SizedBox(width: 6),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.5)),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}
