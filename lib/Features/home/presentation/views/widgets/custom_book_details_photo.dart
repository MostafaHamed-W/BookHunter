import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookDetailsPhoto extends StatelessWidget {
  const CustomBookDetailsPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 150 / 224,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.bookIconTest),
            ),
          ),
        ),
      ),
    );
  }
}
