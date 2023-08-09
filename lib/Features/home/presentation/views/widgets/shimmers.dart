import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class NewestBooksListShimmer extends StatelessWidget {
  const NewestBooksListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white.withOpacity(0.5),
      highlightColor: Colors.grey.withOpacity(0.5),
      child: SizedBox(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 24, left: 25, bottom: 20),
              child: SizedBox(
                height: 130,
                width: double.infinity,
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 300 / 480,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.5,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 11),
                          Text('author',
                              style: Styles.textStyle14
                                  .copyWith(color: Colors.white.withOpacity(0.7))),
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
                              Row(
                                children: [
                                  Icon(Icons.star, color: Color(0xFFFFDD4F)),
                                  SizedBox(width: 6),
                                  Text('Rating', style: Styles.textStyle16),
                                ],
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
            );
          },
        ),
      ),
    );
  }
}

class FeaturedBooksListShimmer extends StatelessWidget {
  const FeaturedBooksListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Colors.white.withOpacity(0.5),
        highlightColor: Colors.grey.withOpacity(0.5),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: AspectRatio(
                    aspectRatio: 150 / 225,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
