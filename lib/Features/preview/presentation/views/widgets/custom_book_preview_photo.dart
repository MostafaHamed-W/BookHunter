import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookPreviewPhoto extends StatelessWidget {
  const CustomBookPreviewPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius:
            BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.bookIconTest),
        ),
      ),
    );
  }
}
