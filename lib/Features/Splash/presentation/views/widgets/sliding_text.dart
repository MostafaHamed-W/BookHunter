import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.textSlidingAnimation,
  });

  final Animation<Offset> textSlidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: textSlidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: textSlidingAnimation,
          child: Text(
            "Hunt Your Next Favorite Read".toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontFamily: AssetsData.splashFont,
            ),
          ),
        );
      },
    );
  }
}
