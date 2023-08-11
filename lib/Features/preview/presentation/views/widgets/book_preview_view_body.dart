import 'package:book_hunt/Features/home/data/book_model/book_model.dart';
import 'package:book_hunt/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/play_button.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/video_progress_line.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/video_time_text.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_book_preview_photo.dart';

class BookPreviewViewBody extends StatefulWidget {
  const BookPreviewViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookPreviewViewBody> createState() => _BookPreviewViewBodyState();
}

class _BookPreviewViewBodyState extends State<BookPreviewViewBody> {
  double videoProgress = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 7,
              child: CustomBookPreviewPhoto(bookModel: widget.bookModel),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      widget.bookModel.volumeInfo.title,
                      style: Styles.textStyle30,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          widget.bookModel.volumeInfo.authors?[0] ?? 'Anonymous',
                          style: Styles.textStyle18.copyWith(
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        BookRating(
                          avgRating: widget.bookModel.volumeInfo.averageRating ?? 0,
                          ratingCount: widget.bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    VideoProgressLine(progress: videoProgress),
                    const SizedBox(height: 7),
                    const VideoTimeText(seconds: 0)
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.3 - 55,
          left: MediaQuery.of(context).size.width * 0.5 - 30,
          child: PlayButton(onPressed: () {
            setState(() {
              videoProgress = 0.5;
            });
          }),
        ),
      ],
    );
  }
}
