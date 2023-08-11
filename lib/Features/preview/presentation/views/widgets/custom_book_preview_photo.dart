import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookPreviewPhoto extends StatelessWidget {
  const CustomBookPreviewPhoto({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: CachedNetworkImageProvider(bookModel.volumeInfo.imageLinks!.thumbnail),
        ),
      ),
    );
  }
}
