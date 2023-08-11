import 'package:book_hunt/Features/splash/presentation/views/widgets/sliding_logo.dart';
import 'package:book_hunt/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:book_hunt/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin {
  late AnimationController textAnimationController;
  late Animation<Offset> textSlidingAnimation;
  late Animation<double> fadeAnimation;
  late AnimationController fadeAnimationController;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    initFadeAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      fadeAnimationController.forward();
    });

    Future.delayed(const Duration(milliseconds: 2000), () {
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    textAnimationController.dispose();
    fadeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.30),
        FadeTransition(
          opacity: fadeAnimation,
          child: const SlidingLogo(),
        ),
        FadeTransition(
          opacity: fadeAnimation,
          child: SlidingText(
            textSlidingAnimation: textSlidingAnimation,
          ),
        ),
      ],
    );
  }

  void initFadeAnimation() {
    fadeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(fadeAnimationController);
  }

  void initSlidingAnimation() {
    textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero).animate(textAnimationController);
    textAnimationController.forward();
  }
}
