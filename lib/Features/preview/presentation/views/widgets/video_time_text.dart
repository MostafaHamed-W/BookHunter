import 'package:flutter/material.dart';

class VideoTimeText extends StatelessWidget {
  final int seconds;

  const VideoTimeText({super.key, required this.seconds});

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(seconds: seconds);
    String formattedTime = _formatDuration(duration);

    return Text(
      formattedTime,
      style: const TextStyle(fontSize: 14, color: Colors.white),
    );
  }

  String _formatDuration(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
