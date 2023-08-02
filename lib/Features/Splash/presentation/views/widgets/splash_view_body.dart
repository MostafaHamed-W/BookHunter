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

  late AnimationController logoAnimationController;
  late Animation<Offset> logoAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: kTransitionDuration,
      // );

      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    textAnimationController.dispose();
    logoAnimationController.dispose();
    super.dispose();
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

  void initSlidingAnimation() {
    textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero).animate(textAnimationController);
    textAnimationController.forward();

    logoAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    logoAnimation = Tween<Offset>(begin: const Offset(0, -2), end: Offset.zero)
        .animate(logoAnimationController);
    logoAnimationController.forward();
  }
}
