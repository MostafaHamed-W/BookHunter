import 'package:book_hunt/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/play_button.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // Import this for using ImageFilter.blur
import '../../../../../core/utils/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookPreviewViewBody extends StatelessWidget {
  const BookPreviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const Expanded(
              flex: 7,
              child: CustomBookPreviewPhoto(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 61),
                    const Row(
                      children: [
                        Text(
                          'The Jungle Book',
                          style: Styles.textStyle30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Rudyard Kipling',
                          style: Styles.textStyle18.copyWith(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.3 - 65,
          left: MediaQuery.of(context).size.width * 0.5 - 40,
          child: PlayButton(onPressed: () {}),
        ),
      ],
    );
  }
}

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
