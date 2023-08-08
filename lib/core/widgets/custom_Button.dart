import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.buttonText,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String buttonText;
  final TextStyle? textStyle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(17),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle ??
                Styles.textStyle20.copyWith(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// Expanded(
//   child: GestureDetector(
//     onTap: () {
//       GoRouter.of(context).push(AppRouter.kBookPreviewView);
//     },
//     child: Container(
//       constraints: const BoxConstraints.expand(),
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(17),
//           bottomRight: Radius.circular(17),
//         ),
//         color: Color(0xFFEF8262),
//       ),
//       child: Center(
//         child: Text(
//           'Free perview',
//           style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
//         ),
//       ),
//     ),
//   ),
// )
