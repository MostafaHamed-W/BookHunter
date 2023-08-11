import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_hunt/core/utils/app_router.dart';
import 'package:book_hunt/core/utils/assets.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BestSellerBookListViewItem extends StatelessWidget {
  const BestSellerBookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 25, bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: 130,
          width: double.infinity,
          child: Row(
            children: [
              CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? 'url',
                aspectRatio: 300 / 480,
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModel.volumeInfo.title,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: AssetsData.kGspectraFine,
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 11),
                    Text(bookModel.volumeInfo.authors[0],
                        style: Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.7))),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                            // '19.99 €'
                            'Free',
                            style: Styles.textStyle20),
                        Spacer(
                          flex: 8,
                        ),
                        BookRating(
                          avgRating: bookModel.volumeInfo.averageRating ?? 0,
                          ratingCount: bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                        Spacer(flex: 3)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
