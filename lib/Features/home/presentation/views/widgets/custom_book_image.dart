import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.aspectRatio = 150 / 225});
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
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
