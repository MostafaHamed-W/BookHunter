import 'package:book_hunt/Features/Splash/presentation/views/widgets/sliding_logo.dart';
import 'package:book_hunt/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:book_hunt/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin {
  late AnimationController textAnimationController;
  late Animation<Offset> textSlidingAnimation;

  late AnimationController logoAnimationController;
  late Animation<Offset> logoAnimation;

  @override
  void initState() {
    super.initState();

    textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero).animate(textAnimationController);
    textAnimationController.forward();

    logoAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    logoAnimation = Tween<Offset>(begin: const Offset(-2, 0), end: Offset.zero)
        .animate(logoAnimationController);
    logoAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingLogo(logoAnimation: logoAnimation),
        SlidingText(textSlidingAnimation: textSlidingAnimation),
      ],
    );
  }
}
