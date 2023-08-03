import 'package:book_hunt/Features/preview/presentation/views/widgets/progress_painter.dart';
import 'package:flutter/cupertino.dart';

class VideoProgressLine extends StatelessWidget {
  final double progress;

  const VideoProgressLine({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ProgressPainter(progress: progress),
      size: const Size(double.infinity, 4.0), // Set the size of the line
    );
  }
}
