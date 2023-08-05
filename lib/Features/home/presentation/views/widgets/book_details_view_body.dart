import 'package:book_hunt/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'books_actions.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 36),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 34),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 15),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(height: 16),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
        const SizedBox(height: 50),
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
        const SizedBox(height: 16),
        const SimilarBooksListview()
      ],
    );
  }
}
