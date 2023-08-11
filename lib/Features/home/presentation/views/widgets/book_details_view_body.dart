import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'books_actions.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const Spacer(flex: 1),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
        ),
        const SizedBox(height: 34),
        Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 1),
        Text(
          bookModel.volumeInfo.authors?[0] ?? 'Anonymous',
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(height: 16),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          avgRating: bookModel.volumeInfo.averageRating ?? 0,
          ratingCount: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const Spacer(flex: 1),
        BooksAction(bookModel: bookModel),
        const Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const Spacer(flex: 1),
        const SimilarBooksListview(),
        const Spacer(flex: 1),
      ],
    );
  }
}
