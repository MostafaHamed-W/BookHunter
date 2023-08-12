import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class NoSimilarBooksWidget extends StatelessWidget {
  const NoSimilarBooksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Sorry, there is no similar books!',
      style: Styles.textStyle20,
    ));
  }
}
