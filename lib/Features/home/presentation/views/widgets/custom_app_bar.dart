import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Row(
        children: [
          Text(
            'Book Hunter'.toUpperCase(),
            style: const TextStyle(
              fontFamily: AssetsData.splashFont,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.4,
              fontSize: 19,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
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
