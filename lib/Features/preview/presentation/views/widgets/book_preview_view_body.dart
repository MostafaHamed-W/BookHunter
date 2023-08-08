import 'package:book_hunt/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/play_button.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/video_progress_line.dart';
import 'package:book_hunt/Features/preview/presentation/views/widgets/video_time_text.dart';
import 'package:book_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_book_preview_photo.dart';

class BookPreviewViewBody extends StatefulWidget {
  const BookPreviewViewBody({super.key});

  @override
  State<BookPreviewViewBody> createState() => _BookPreviewViewBodyState();
}

class _BookPreviewViewBodyState extends State<BookPreviewViewBody> {
  double videoProgress = 0.5;
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
                    const SizedBox(height: 40),
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
                    const SizedBox(height: 7),
                    const Row(
                      children: [
                        BookRating(),
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
          bottom: MediaQuery.of(context).size.height * 0.3 - 45,
          left: MediaQuery.of(context).size.width * 0.5 - 30,
          child: PlayButton(onPressed: () {
            setState(() {
              videoProgress = 0.8;
            });
          }),
        ),
      ],
    );
  }
}
