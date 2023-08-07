import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Row(
        children: [
          Text(
            'Book Hunter'.toUpperCase(),
            style: const TextStyle(
              fontFamily: AssetsData.splashFont,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.4,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            child: Image.asset(
              AssetsData.searchIcon,
              height: 23,
            ),
          ),
        ],
      ),
    );
  }
}
