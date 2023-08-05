import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(17)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.bookIconTest),
          ),
        ),
      ),
    );
  }
}
