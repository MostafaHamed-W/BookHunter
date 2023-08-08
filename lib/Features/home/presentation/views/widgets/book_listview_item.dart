import 'package:book_hunt/core/utils/app_router.dart';
import 'package:book_hunt/core/utils/assets.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'book_rating.dart';

class BestSellerBookListViewItem extends StatelessWidget {
  const BestSellerBookListViewItem(
      {super.key, required this.imgUrl, required this.bookName, required this.author});
  final String imgUrl;
  final String bookName;
  final List<String> author;
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
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                    aspectRatio: 300 / 480,
                    child: CachedNetworkImage(
                      imageUrl: imgUrl,
                      errorWidget: (context, url, error) => const Icon(Icons.close),
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookName,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: AssetsData.kGspectraFine,
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 11),
                    Text(author[0],
                        style: Styles.textStyle14.copyWith(color: Colors.white.withOpacity(0.7))),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        Text(
                            // '19.99 €'
                            'Free',
                            style: Styles.textStyle20),
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
