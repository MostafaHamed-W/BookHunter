import 'package:book_hunt/core/utils/app_router.dart';
import 'package:book_hunt/core/utils/assets.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 25, bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 130,
          width: double.infinity,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 300 / 480,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.bookIconTest),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Styles.textStyle20.copyWith(
                          fontFamily: AssetsData.kGspectraFine,
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 11),
                    Text('J.K. Rowling',
                        style: Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.7))),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        Text('19.99 €', style: Styles.textStyle20),
                        Spacer(
                          flex: 8,
                        ),
                        BookRating(),
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
