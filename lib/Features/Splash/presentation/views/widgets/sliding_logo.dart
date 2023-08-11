import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    // required this.logoAnimation,
  });

  // final Animation<Offset> logoAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(AssetsData.logo),
    );
  }
}
