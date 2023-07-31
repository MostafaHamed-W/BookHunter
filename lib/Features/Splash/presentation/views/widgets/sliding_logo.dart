import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.logoAnimation,
  });

  final Animation<Offset> logoAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: logoAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: logoAnimation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(AssetsData.logo),
          ),
        );
      },
    );
  }
}
