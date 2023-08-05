// class PlayButton extends StatelessWidget {
//   final VoidCallback onPressed;

//   const PlayButton({super.key, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
//       child: Container(
//         width: 80,
//         height: 80,
//         padding: const EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.white.withOpacity(0.4),
//           border: Border.all(color: Colors.white, width: 2),
//         ),
//         child: const Icon(
//           Icons.play_arrow,
//           color: Colors.white,
//           size: 24, // Adjust the size of the icon as needed
//         ),
//       ),
//     );
//   }
// }

// Import this for using ImageFilter.blur

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PlayButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40), // Half of 80 for rounded effect
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust the blur sigma as needed
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 27, // Adjust the size of the icon as needed
              ),
            ),
          ),
        ),
      ),
    );
  }
}
